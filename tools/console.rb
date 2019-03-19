# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("Peter", 200)
l2 = Lifter.new("Oli", 190)
l3 = Lifter.new("Riccardo", 210)

g1 = Gym.new("VirginSport")
g2 = Gym.new("Cre8")
g3 = Gym.new("PureGym")
g4 = Gym.new("EastIndiaGyms")

m1 = Membership.new(100, l1, g1)
m2 = Membership.new(200, l2, g2)
m3 = Membership.new(50, l3, g3)
m4 = Membership.new(500, l1, g4)
m5 = Membership.new(200, l3, g2)

binding.pry

puts "Gains!"
