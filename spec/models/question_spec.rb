require "rails_helper"

RSpec.describe Question, type: :model do
  subject(:question) { build(:question) }

  it { is_expected.to be_valid }
  it { is_expected.to validate_presence_of(:prompt) }
  it { is_expected.to validate_presence_of(:choices) }
  it { is_expected.to validate_presence_of(:answer_index) }

  it "requires difficulty to be one of easy/medium/hard" do
    question.difficulty = "nonsense"
    expect(question).not_to be_valid
    expect(question.errors[:difficulty]).to be_present
  end

  it "is invalid when answer_index is out of range" do
    question.choices = %w[A B C D]
    question.answer_index = 9
    expect(question).not_to be_valid
  end
end
