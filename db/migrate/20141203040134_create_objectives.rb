class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.integer :account_id
      t.integer :target_portfolio_id
      t.string :name
      t.string :category
      t.date :target_date
      t.float :target_value

      t.timestamps

    end
  end
end
