require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

zoo1 = Zoo.new("ABC Zoo", "Philly")
zoo2 = Zoo.new("XYZ Zoo", "NYC")
zoo3 = Zoo.new("MNO Zoo", "NYC")

anim1 = Animal.new("Cat", 15, "Kitty")
anim2 = Animal.new("Dog", 25, "Doggy")
anim3 = Animal.new("Cat", 18, "Kit")
anim4 = Animal.new("Cat", 13, "Catty")


binding.pry
puts "done"
