# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Martin Lear
# 2. Greg White
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add new groceries (name, quantity, category)
# As a user, I want to categorize groceries
# As a user, I want to remove off list
# As a user, I want to display the groceries
 
# Pseudocode
# Grocery list class that initializes with empty array.
# Item class that has 3 properties; name, quantity and category.
# These categories will include Meats, Breads, Produce, Dairy, Canned Food, Sides, and Condiments
# Argument check to see if category is valid.
# Create methods to add, catagorize, remove and display our items in our grocery list.
# 
 
 
# Your fabulous code goes here....

class Grocery_list
  def initialize
    @list = []
  end  
  
  def add(item)
    @list << item
  end
  
  def remove(item)
    @list.delete(item)
  end
  
  def categorize
    hash = @list.group_by {|item| item.category}
    print hash
    puts ""
  end
  
  def display
    @list.each {|item| puts "Name: #{item.name}  Quantity: #{item.quantity}  Category: #{item.category}" }
  end
  
end

class Controller
  def initialize
    @grocery_list = Grocery_list.new
    self.prompt
  end
  
  def prompt
    quit = false
    until quit
      puts "What would you like to do?"
      puts " 1: Add Item, 2: Remove Item, 3: Categorize, 4: Display, 5: Quit"
      input = gets.chomp
      case 
        when input == "1"
          self.add_item
        when input == "2"
          self.remove_item
        when input == "3"
          @grocery_list.categorize
        when input == "4"
          @grocery_list.display
        when input == "5"
          quit = true
        else
          puts "invalid input"
      end
    end
  end
  
    def remove_item
      puts "what item to remove?"
      item = gets.chomp
      @grocery_list.remove(item)
    end
    
    def add_item
      categories = ["meat", "breads", "produce", "dairy", "canned food", "sides", "condiments"]
      puts "What's the name of the item?"
      name = gets.chomp
      puts "How many of the item do you need?"
      quantity = gets.chomp
      puts "What category of food is this?"
      puts "Categories:"
      categories.each {|category| print "#{category}, "}
      puts ""
      category = gets.chomp
      
      @grocery_list.add(Item.new(name, quantity, category))
    end
end

class Item
  attr_accessor :name, :quantity, :category
  CATEGORIES = ["meat", "breads", "produce", "dairy", "canned food", "sides", "condiments"] 
  def initialize(name, quantity, category)
    @name = name
    @quantity = quantity
    if CATEGORIES.include?(category.to_s.downcase)
      @category = category 
    else
      raise ArgumentError.new("Category does not exist")
    end
  end
end


# DRIVER CODE GOES HERE. 
go = Controller.new
 
# Relection:

# this was a fantastic exercise for me, I learned so much.  I came into this gps thinking I was comfortable with
# classes and could pretty much do anything that was needed.  And then Greg happened.  I was way out of my league.
# He introduced me to a whole slew of new ideas and techinques that I will be using going forward, its like the
# fog has been lifted and I am seeing what classes can do in a whole new light.  We decided to build in a controller class
# here so that we could have a functioning program, and it worked it great.  It took some time, so we haven't refactored
# yet, but I am still a bit stunned by all that just happened.