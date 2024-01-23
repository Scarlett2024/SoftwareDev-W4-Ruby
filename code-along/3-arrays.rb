# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 3-arrays.rb

# Arrays are lists of things
fav_foods = ["tacos", "pizza", "ice cream"]
friend_fav_food = ["grass", "berries", "kale"]
test_list = [2,3,true]

# Accessing the array
puts fav_foods[0]

our_food = fav_foods + friend_fav_food
puts "all the foods: #{our_food}"

# Add to the array
fav_foods << "dumplings"
puts "my fav: #{fav_foods}"

#Multiple layered array
shopping_list = [fav_foods, friend_fav_food]
puts "pick shopping list: #{shopping_list[0][1]}"

# There are lots of fun things you can do with arrays:
# https://ruby-doc.org/core-2.7.0/Array.html
