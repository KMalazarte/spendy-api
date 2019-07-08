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
#
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
  avatar: "https://stickerpop-prd.s3.us-west-2.amazonaws.com/stickers/PKHwOUXxj0KgZ7Safr5fdeBIVlfqnD8KGN8WVoOS.gif",
  monthly_take_home: 3500
)

rachel = User.create(
  username: "rachel",
  password: "rachel",
  avatar: "http://www.myfreephotoshop.com/wp-content/uploads/2013/12/186.jpg",
  monthly_take_home: 3800
)


nicole = User.create(
  username: "nicole",
  password: "nicole",
  avatar: "https://ichef.bbci.co.uk/images/ic/704xn/p050s1tm.jpg",
  monthly_take_home: 5000
)

jane = User.create(
  username: "jane",
  password: "jane",
  avatar: "https://images-na.ssl-images-amazon.com/images/I/71QTdlMgRQL._UX395_.jpg",
  monthly_take_home: 8000
)

user_1_first_purchase = Purchase.create(
    date: "7-1-19",
    name: "Stella",
    category: "Booze/Night Out",
    place_of_purchase: "Murphy's Pub",
    out_of_pocket: 20.00,
    actual_paid: 20.00,
    payment_method: "Credit",
    user_id: 1
  )

user_1_second_purchase = Purchase.create(
    date: "7-2-19",
    name: "Gas",
    category: "Transportation/ Gas",
    place_of_purchase: "Sunoco",
    out_of_pocket: 40.00,
    actual_paid: 40.00,
    payment_method: "Cash",
    user_id: 1
  )


user_1_third_purchase = Purchase.create(
  date: "7-1-19",
  name: "Eggs",
  category: "Groceries",
  place_of_purchase: "Stop & Shop",
  out_of_pocket: 2.50,
  actual_paid: 2.50,
  payment_method: "Credit",
  user_id: 1
)

user_1_fourth_purchase = Purchase.create(
  date: "7-4-19",
  name: "Ani Ramen",
  category: "Eating Out",
  place_of_purchase: "Ani Ramen",
  out_of_pocket: 150.67,
  actual_paid: 35.60,
  payment_method: "Credit",
  user_id: 1
)

user_1_fifth_purchase = Purchase.create(
  date: "7-4-19",
  name: "Nike React Presto",
  category: "Clothes/Accessories",
  place_of_purchase: "Nike.com",
  out_of_pocket: 120.00,
  actual_paid: 120.00,
  payment_method: "Credit",
  user_id: 1
)

user_1_sixth_purchase = Purchase.create(
  date: "7-14-19",
  name: "Flight to Budapest",
  category: "Flights/ Hotels",
  place_of_purchase: "Orbitz.com",
  out_of_pocket: 650.89,
  actual_paid: 650.89,
  payment_method: "Credit",
  user_id: 1
)

user_1_seventh_purchase = Purchase.create(
  date: "7-10-19",
  name: "Flowers",
  category: "Gifts",
  place_of_purchase: "Tony's Flower Shop",
  out_of_pocket: 25.45,
  actual_paid: 25.45,
  payment_method: "Credit",
  user_id: 1
)

user_1_eighth_purchase = Purchase.create(
  date: "7-10-19",
  name: "Avalon Board Game",
  category: "Entertainment",
  place_of_purchase: "Amazon",
  out_of_pocket: 15.32,
  actual_paid: 15.32,
  payment_method: "Credit",
  user_id: 1
)

user_1_first_monthly = Monthly.create(
  name: "Netflix",
  amount: 12.99,
  user_id: 1
)

user_1_second_monthly = Monthly.create(
  name: "Car Payment",
  amount: 370.00,
  user_id: 1
)

user_1_third_monthly = Monthly.create(
  name: "Car Insurance",
  amount: 126.00,
  user_id: 1
)

user_1_fourth_monthly = Monthly.create(
  name: "Gym Membership",
  amount: 15.94,
  user_id: 1
)

user_1_fifth_monthly = Monthly.create(
  name: "Cellphone Bill",
  amount: 57.11,
  user_id: 1
)

user_2_first_purchase = Purchase.create(
  date: "7-1-19",
  name: "Bag",
  category: "Clothes/Accessories",
  place_of_purchase: "LV",
  out_of_pocket: 1000,
  actual_paid: 1000,
  payment_method: "Credit",
  user_id: 2
)

user_2_second_purchase = Purchase.create(
  date: "7-1-19",
  name: "Coffee",
  category: "Eating Out",
  place_of_purchase: "Starbucks",
  out_of_pocket: 5.25,
  actual_paid: 5.25,
  payment_method: "Credit",
  user_id: 2
)

user_2_third_purchase = Purchase.create(
  date: "7-3-19",
  name: "Gucci Slides",
  category: "Clothes/Accessories",
  place_of_purchase: "Gucci",
  out_of_pocket: 150,
  actual_paid: 150,
  payment_method: "Credit",
  user_id: 2
)

user_3_first_purchase = Purchase.create(
  date: "7-4-19",
  name: "Spam Sandwich",
  category: "Eating Out",
  place_of_purchase: "Aloha Cafe",
  out_of_pocket: 5.00,
  actual_paid: 5.00,
  payment_method: "Cash",
  user_id: 3
)

user_3_second_purchase = Purchase.create(
  date: "7-4-19",
  name: "Oversize Sweatshirt",
  category: "Clothes/Accessories",
  place_of_purchase: "PacSun",
  out_of_pocket: 60,
  actual_paid: 60,
  payment_method: "Credit",
  user_id: 3
)
