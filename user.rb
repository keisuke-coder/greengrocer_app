class User
  attr_reader :chosen_product, :decide_of_quanity
  def choose_products(products)
    while true
      print "商品を選択 >"
      select_product_num = gets.to_i
      @chosen_product = products.find{|product| product.id == select_product_num }
      break if !@chosen_product.nil?
      puts "#{products.first.id}〜#{products.last.id}の中で選択して下さい。"
    end
  end

  def decide_quanity
    while true
      print "個数を選択 >"
      @decide_of_quanity = gets.to_i
      break if @decide_of_quanity >= 1
      puts "1個以上選択して下さい。"
    end
  end
end
