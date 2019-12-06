class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :store_id
      t.float :total_price, null: true
      t.boolean :order_submitted, default: false
    end
  end
end
