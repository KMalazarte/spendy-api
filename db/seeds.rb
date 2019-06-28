require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# def rand_price(from, to)
#   rand(from..to).round(2)
# end

# 20.times do
#   Purchase.create(
#     date: Faker::Date.between(15.days.ago, Date.today),
#     name: Faker::Beer.name,
#     category: "Beer",
#     place_of_purchase: Faker::Company.name,
#     out_of_pocket: rand_price(10,100),
#     actual_paid: rand_price(10,30),
#     payment_method: "Credit",
#   )
# end

kevin = User.create(
  username: "kevin",
  password: "kevin",
  avatar: ""
)

# first_purchase = Purchase.create(
#     date: "June 28,2019",
#     name: "Stella",
#     category: "Beer",
#     place_of_purchase: "bar",
#     out_of_pocket: 20,
#     actual_paid: 10,
#     payment_method: "Credit",
#     user_id: 1
#   )
