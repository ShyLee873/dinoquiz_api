class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :category
      t.string :difficulty
      t.text :prompt
      t.jsonb :choices
      t.integer :answer_index

      t.timestamps
    end
  end
end
