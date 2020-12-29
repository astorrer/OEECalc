class CreateMetrics < ActiveRecord::Migration[6.0]
  def change
    create_table :metrics do |t|
      t.belongs_to :equipment, null: false, foreign_key: true
      t.integer :planned_production_time
      t.integer :stop_time
      t.integer :ideal_cycle_time
      t.integer :total_count
      t.integer :good_count
      t.float :availability
      t.float :performance
      t.float :quality
      t.float :oee

      t.timestamps
    end
  end
end
