class Api::V1::QuestionsController < ActionController::API
  # GET /api/v1/questions
  def index
    scope = Question.all
    scope = scope.where(category: params[:category]) if params[:category].present?
    scope = scope.where(difficulty: params[:difficulty]) if params[:difficulty].present?
    scope = scope.order(Arel.sql("RANDOM()")) if truthy?(params[:random])

    limit = clamp_int(params[:limit], default: 10, min: 1, max: 50)
    render json: scope.limit(limit)#Can , only: exposed_fields
  end

  # GET /api/v1/questions/random?count=5
  def random
    count = clamp_int(params[:count], default: 5, min: 1, max: 50)
    render json: Question.order(Arel.sql("RANDOM()")).limit(count)#, only: exposed_fields
  end

  def create
    q = Question.new(question_params)
    q.save ? render(json: q, status: :created) :
             render(json: { errors: q.errors.full_messages }, status: :unprocessable_entity)
  end

  private

  def question_params
    params.require(:question).permit(:category, :difficulty, :prompt, :answer_index, choices: [])
  end

  def exposed_fields
    %i[id category difficulty prompt choices answer_index] # or hide answer_index for clients!
  end

  def truthy?(v) = ActiveModel::Type::Boolean.new.cast(v)
  def clamp_int(v, default:, min:, max:)
    (Integer(v || default) rescue default).clamp(min, max)
  end
end