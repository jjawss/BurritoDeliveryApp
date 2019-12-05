# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Store.destroy_all

10.times do
  Store.create(
    address: Faker::Address.street_address,
    city: "Houston",
    state: "Texas",
    zip_code: "77002",
    hours_open: "11-10",
    phone_number: Faker::PhoneNumber.cell_phone
  )
end
