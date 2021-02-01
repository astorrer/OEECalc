class CreateExpectations < ActiveRecord::Migration[6.0]
  def change
    create_table :expectations do |t|
      t.text :description
      t.integer :overall_value
      t.refrences{polymorphic} :expectationable

      t.timestamps
    end
  end
end
