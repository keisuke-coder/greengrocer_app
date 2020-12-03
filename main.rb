require "./product.rb"
require "./greengrocer.rb"
require "./user.rb"

product_params = [
  {name: "トマト", price: 100},
  {name: "きゅうり", price: 200},
  {name: "玉ねぎ", price: 300},
  {name: "なす", price: 400}
]

greengrocer = Greengrocer.new(product_params)

add_product_params = [
  {name: "うどん", price: 350},
  {name: "そば", price: 380},
]

greengrocer.registration_product(add_product_params)

user = User.new
greengrocer.disp_product
user.choose_products(greengrocer.products)
greengrocer.ask_quanity(user.chosen_product)
user.decide_quanity
greengrocer.find_total(user)
