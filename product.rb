class Product
  attr_reader :id, :name, :price
  @@count = 0
  def initialize(param)
    @id = @@count += 1
    @name = param[:name]
    @price = param[:price]
  end
end