class CreateCardAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :card_attributes do |t|
      t.references :card
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
