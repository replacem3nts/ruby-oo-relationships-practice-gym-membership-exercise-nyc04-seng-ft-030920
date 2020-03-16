# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("Arnie", 5_000)
l2 = Lifter.new("Dr. Sacks", 3_250)
l3 = Lifter.new("Andre The Giant", 10_000)
l4 = Lifter.new("Popeye", 1_000)
l5 = Lifter.new("Samson", 1_500)


g1 = Gym.new("Golds Gym")
g2 = Gym.new("Gym Jones")
g3 = Gym.new("Iron Religion")
g4 = Gym.new("Equinox")

l1.new_memb(g1, 200)
l1.new_memb(g2, 300)
l1.new_memb(g3, 500)
l1.new_memb(g4, 2000)
l2.new_memb(g1, 200)
l2.new_memb(g3, 500)
l3.new_memb(g1, 200)
l4.new_memb(g2, 200)
l4.new_memb(g4, 2000)
l5.new_memb(g3, 500)
# test code goes here

binding.pry

puts "Gains!"
