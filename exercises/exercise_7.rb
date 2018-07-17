require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Enter store name"
@store_name = gets.chomp

new_store = Store.new name: "#{@store_name}"
#new_store.validate

if new_store.valid?
  new_store.save
else
  # binding.pry
  new_store.errors.messages.each do |err|
    puts "in errors"
    puts "#{err}"
  end
end

# if @store_name.errors.any?
#   @store_name.errors.each do |attribute, message|
#     puts message
#   end
# end 

