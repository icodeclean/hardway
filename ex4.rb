# make variable for cars and set to 100
cars = 100
# set a float variable for space in cars
space_in_a_car = 4.0
# set driver variable
drivers = 30
# set passenger variable
passengers = 90
# set cars not driven variable
cars_not_driven = cars - drivers
# set cars driven variable
cars_driven = drivers
# set carpool capacity
carpool_capacity= cars_driven * space_in_a_car
# Set average passengers per car
average_passengers_per_car = passengers / cars_driven

# print number of cars onscreen
puts "There are #{cars} cars available."
# print number of drives onscreen
puts "There are only #{drivers} drivers available."
# print number of empty cars
puts "There will be #{cars_not_driven} empty cars today."
# print carpool capacity
puts "We can transport #{carpool_capacity} people today."
# print number of passengers
puts "We have #{passengers} passengers to carpool today."
# print average passengers per car
puts "We need to put about #{average_passengers_per_car} in each car."