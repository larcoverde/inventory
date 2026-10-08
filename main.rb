class Item
  attr_accessor :name, :id, :price, :amount

  def initialize(name, id, price, amount)
    @name = name
    @id = id
    @price = price
    @amount = amount
  end
end

inventory = []

def create_item(inventory, name, id, price, amount)
  inventory << Item.new(name, id, price, amount)
end
