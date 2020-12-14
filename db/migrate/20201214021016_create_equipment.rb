class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.integer :number
      t.belongs_to :facility, null: false, foreign_key: true

      t.timestamps
    end
  end
end
