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

def list_items(inventory)
  inventory.each do |item|
    puts item.name
  end
end

def view_item_details(inventory, index)
  puts inventory[index - 1].name
  puts inventory[index - 1].id
  puts inventory[index - 1].price
  puts inventory[index - 1].amount
end
