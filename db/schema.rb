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

ActiveRecord::Schema.define(version: 2019_12_04_220507) do

  create_table "burritos", force: :cascade do |t|
    t.string "style"
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

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "store_id"
    t.float "total_price"
  end

  create_table "stores", force: :cascade do |t|
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "hours_open"
    t.string "phone_number"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "store_id"
    t.float "total_price"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "favorite_order_id"
    t.string "username"
    t.string "password"
  end

end
