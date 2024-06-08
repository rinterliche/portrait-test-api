class CreateStockTickers < ActiveRecord::Migration[7.0]
  def change
    create_table :stock_tickers do |t|

      t.timestamps
    end
  end
end
