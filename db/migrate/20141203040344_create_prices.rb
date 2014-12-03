class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :etf_id
      t.date :close_date
      t.float :close_price

      t.timestamps

    end
  end
end
