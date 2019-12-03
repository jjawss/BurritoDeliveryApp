class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :customer_id
      t.integer :store_id
    end
  end
end
