# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_03_175043) do

  create_table "burritos", force: :cascade do |t|
    t.string "type"
    t.string "rice"
    t.string "beans"
    t.string "meat"
    t.string "veggies"
    t.string "salsa"
    t.boolean "sour_cream"
    t.boolean "corn"
    t.boolean "lettuce"
    t.boolean "cheese"
    t.string "price"
    t.integer "transaction_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "store_id"
  end

end
