class Question < ApplicationRecord
  DIFFICULTIES = %w[easy medium hard].freeze

  validates :prompt, presence: true
  validates :choices, presence: true
  validates :answer_index, presence: true,
                           numericality: { only_integer: true }
  validates :difficulty, inclusion: { in: DIFFICULTIES }

  validate  :choices_is_non_empty_array
  validate  :answer_index_within_choices

  # Testing scopes
  scope :by_category,   ->(cat) { where(category: cat) if cat.present? }
  scope :by_difficulty, ->(dif) { where(difficulty: dif) if dif.present? }

  private

  def choices_is_non_empty_array
    unless choices.is_a?(Array) && choices.any?
      errors.add(:choices, "must be a non-empty array")
    end
  end

  def answer_index_within_choices
    return if answer_index.nil? || !choices.is_a?(Array) || choices.empty?

    unless answer_index.is_a?(Integer)
      errors.add(:answer_index, "must be an integer")
      return
    end

    if answer_index.negative? || answer_index >= choices.size
      errors.add(:answer_index, "is out of range")
    end
  end
end