class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :store_id
      t.float :total_price
      t.boolean :order_submitted
    end
  end
end
