class AddNameToTargetPortfolios < ActiveRecord::Migration
  def change
    add_column :target_portfolios, :name, :string
  end
end
