FactoryBot.define do
  factory :question do
    category      { "dinosaurs" }
    difficulty    { %w[easy medium hard].sample }
    prompt        { Faker::Lorem.sentence(word_count: 8) }
    choices       { ["A", "B", "C", "D"] }
    answer_index  { 0 }
  end
end
