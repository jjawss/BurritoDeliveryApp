class CreateStore < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |table|
      table.string :address
      table.string :city
      table.string :state
      table.string :zip_code
      table.string :hours_open
      table.string :phone_number


    
    end
  end
end
