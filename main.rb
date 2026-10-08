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

  index -= 1

  puts inventory[index].name
  puts inventory[index].id
  puts inventory[index].price
  puts inventory[index].amount
end

def edit_item(inventory, index, new_name, new_id, new_price, new_amount)
  index -= 1

  inventory[index].name = new_name unless new_name.empty?
  inventory[index].name = new_id unless new_id.empty?
  inventory[index].name = new_price unless new_price.empty?
  inventory[index].name = new_amount unless new_amount.empty?
end
