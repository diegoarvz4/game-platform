class CreateWrongAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :wrong_answers do |t|
      t.references :multiple_choice_card, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
