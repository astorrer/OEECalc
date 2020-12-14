class CreateFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :address
      t.string :secondary_address
      t.string :city
      t.string :country
      t.integer :zip

      t.timestamps
    end
  end
end
