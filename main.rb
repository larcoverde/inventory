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
  inventory.each do |index, item|
    puts "#{index + 1} - #{item.name}"
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
  inventory[index].id = new_id unless new_id.empty?
  inventory[index].price = new_price unless new_price.empty?
  inventory[index].amount = new_amount unless new_amount.empty?
end

def delete_item(inventory, index)
  index -= 1

  inventory.delete_at(index)
end

def display_help_msg
  puts <<~HELP
    Usage: ruby main.rb <option>

    Options:
      -h, --help       Display this help message
      -v, --version    Display program version

      -a, --add        <name, id, price, amount>
                       Add item

      -l, --list       List items

      -d, --details    <index>
                       Display item details

      -e, --edit       <index, new_name, new_id, new_price, new_amount>
                       Edit item

      -D, --delete     <index>
                       Delete item
  HELP
end

def display_version_msg
  puts <<~VERSION
    inventory - version 0.1 2026.10.08
    by Lucas Arcoverde de Melo
  VERSION
end
