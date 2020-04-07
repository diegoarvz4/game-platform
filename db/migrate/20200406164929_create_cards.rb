class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.references :deck, foreign_key: true
      t.string :title
      t.string :img_url
      t.string :description

      t.timestamps
    end
  end
end
