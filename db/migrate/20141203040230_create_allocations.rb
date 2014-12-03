class CreateAllocations < ActiveRecord::Migration
  def change
    create_table :allocations do |t|
      t.integer :target_portfolio_id
      t.integer :etf_id
      t.float :weight

      t.timestamps

    end
  end
end
