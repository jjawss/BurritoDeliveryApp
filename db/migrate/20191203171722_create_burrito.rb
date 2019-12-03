class CreateBurrito < ActiveRecord::Migration[6.0]
  def change
    create_table :burritos do |t|
      t.string :type
      t.string :rice
      t.string :beans
      t.string :meat
      t.string :veggies
      t.string :salsa
      t.boolean :sour_cream
      t.boolean :corn
      t.boolean :lettuce
      t.boolean :cheese
      t.string :price
      t.integer :transaction_id
    end
  end
end
