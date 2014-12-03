class CreateHoldings < ActiveRecord::Migration
  def change
    create_table :holdings do |t|
      t.integer :objective_id
      t.integer :etf_id
      t.float :shares

      t.timestamps

    end
  end
end
