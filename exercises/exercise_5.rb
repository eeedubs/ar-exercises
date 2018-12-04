require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@sum = Store.sum(:annual_revenue)
@average = @sum / Store.count
@over_million = Store.where("annual_revenue > ?", 1000000).count

puts "Total annual revenue: #{@sum}"
puts "Average annual revenue: #{@average}"
puts "Number of stores over one million in annual revenue: #{@over_million}"
