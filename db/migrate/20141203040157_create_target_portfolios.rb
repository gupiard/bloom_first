class CreateTargetPortfolios < ActiveRecord::Migration
  def change
    create_table :target_portfolios do |t|
      t.integer :risk_rank
      t.boolean :pea_compatible
      t.float :expected_return
      t.float :standard_deviation

      t.timestamps

    end
  end
end
