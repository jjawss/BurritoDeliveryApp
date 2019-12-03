class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |table|
      table.string :name
      table.string :address
      table.integer :favorite_order_id
      table.string :username
      table.string :password


    end
  end
end
