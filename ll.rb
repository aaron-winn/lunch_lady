# defines men

puts "---- Lundch Menu ----"

class Dish 
    attr_accessor :food, :price, :nutrition, :type
    def initialize (food, price, nutrition, type)
      @type = type
      @food = food
      @price = price
      @nutrition = nutrition
      
    end
    
end

main_dishes = []
main_dishes.push Dish.new("burger",  4.25, "647 calories", "main dish")
main_dishes.push Dish.new("grilled cheese", 3.75, "70 calories per bite", "main dish")
main_dishes.push Dish.new("burrito", 4.50, "473 calories", "main dish")

side_dishes = []
side_dishes.push Dish.new("salad",  4.75, "10 calories ", "side dish")
side_dishes.push Dish.new("fries", 3.50, "300 calories", "side dish")
side_dishes.push Dish.new("onion rings", 4.50, "425 calories", "side dish")

def get_choice(type, items)
  puts "Choose #{type} dish by number"
  
  items.each_with_index do |dish, index| 
    puts index.to_s + " " + dish.food + " " + dish.price.to_s + dish.nutrition
  end
  choice = gets.chomp.to_i
  return items[choice]
  #check for number #Todo
end
choices = []
choices.push get_choice "main",main_dishes
choices.push get_choice "side",side_dishes
choices.push get_choice "side",side_dishes

puts "This is your order"

choices.each_with_index do |dish, index| 
  puts index.to_s + " " + dish.food + " " + dish.price.to_s + dish.nutrition
end
total = 0 


choices.each_with_index do |dish, index| 
  total = total + dish.price
end
print "Total $"
puts total 

total = 0

choices.each.to_i do |nutrition|
 total = total + dish.nutrition
end

puts total
=begin
the user chooses from a list of main dishes
- the user chooses 2 side dish items
- computer repeats users order
- computer totals lunch items and displays total
=end