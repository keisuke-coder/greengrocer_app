class Greengrocer
  attr_reader :products

  DISCOUNT_QUANITY = 7
  DISCOUNT_RATE = 0.1
  DISCOUNT_RATE_NUM = DISCOUNT_RATE * 100
  DISCOUNT = 1 - DISCOUNT_RATE

  def initialize(product_params)
    @products = []
    registration_product(product_params)
  end

  def registration_product(product_params)
    product_params.each do |param|
      @products << Product.new(param)
    end
  end

  def disp_product
    puts "いらっしゃいませ！商品を選んで下さい"
    @products.each do |product|
      puts "#{product.id}.#{product.name}(#{product.price}円)"
    end
  end

  def ask_quanity(chosen_product)
    puts "#{chosen_product.name}ですね。何個買いますか?"
  end

  def find_total(user)
    total_price = user.chosen_product.price * user.decide_of_quanity
    if user.decide_of_quanity >= DISCOUNT_QUANITY
      puts "#{DISCOUNT_QUANITY}個以上なので#{DISCOUNT_RATE_NUM.floor}%割引となります!"
      total_price *= DISCOUNT
    end
    puts "合計金額は#{total_price.floor}円です。"
    puts "お買い上げありがとうございました!"
  end
end