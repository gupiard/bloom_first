class CreateEtfs < ActiveRecord::Migration
  def change
    create_table :etfs do |t|
      t.string :name
      t.string :ticker
      t.string :isin
      t.string :asset_class
      t.string :currency
      t.string :manager
      t.float :fee

      t.timestamps

    end
  end
end
