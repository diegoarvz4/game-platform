class CreateSingleAnswerCards < ActiveRecord::Migration[5.2]
  def change
    create_table :single_answer_cards do |t|
      t.references :question_deck, foreign_key: true
      t.string :question
      t.string :img_url
      t.string :answer

      t.timestamps
    end
  end
end
