require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Eric", last_name: "Wilson", hourly_rate: 120)
@store1.employees.create(first_name: "Steve", last_name: "Potter", hourly_rate: 80)
@store1.employees.create(first_name: "Flora", last_name: "Weasley", hourly_rate: 65)
@store1.employees.create(first_name: "Adam", last_name: "Edelman", hourly_rate: 30)
@store1.employees.create(first_name: "Bridget", last_name: "Moon", hourly_rate: 35)
@store2.employees.create(first_name: "Jess", last_name: "Armstrong", hourly_rate: 25)
@store2.employees.create(first_name: "Adam", last_name: "Fellows", hourly_rate: 45)
@store2.employees.create(first_name: "Ben", last_name: "Kiang", hourly_rate: 70)
@store2.employees.create(first_name: "Kate", last_name: "Moro", hourly_rate: 60)
@store2.employees.create(first_name: "Mary", last_name: "Williams", hourly_rate: 20)
@store2.employees.create(first_name: "Harvey", last_name: "Specter", hourly_rate: 30)


Employee.select do |item|
    pp item
end
