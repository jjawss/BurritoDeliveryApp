class AddTotalPriceToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :total_price, :float
  end
end
