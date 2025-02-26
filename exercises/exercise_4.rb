require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mensStores = Store.where(mens_apparel: true)
@mensStores.each do |item|
  puts "Name: #{item.name}, Annual Revenue: #{item.annual_revenue}"
end

@womensStores = Store.where("womens_apparel = true and annual_revenue < 1000000")
@womensStores.each do |item|
  puts "Name: #{item.name}, Annual Revenue: #{item.annual_revenue}"
end
