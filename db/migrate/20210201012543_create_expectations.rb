class CreateExpectations < ActiveRecord::Migration[6.0]
  def change
    create_table :expectations do |t|
      t.text :description
      t.integer :overall_value
      t.references :expectable, polymorphic: true # This indicates that expecations can belong to many different classes.
      
      t.timestamps
    end
  end
end
