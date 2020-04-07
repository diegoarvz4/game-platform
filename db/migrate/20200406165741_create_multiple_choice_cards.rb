class CreateMultipleChoiceCards < ActiveRecord::Migration[5.2]
  def change
    create_table :multiple_choice_cards do |t|
      t.references :question_deck, foreign_key: true
      t.string :question
      t.string :img_url

      t.timestamps
    end
  end
end
