# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Pet Categories
categories = [
  "Cat", "Dog", "Small Mammal", "Bird", "Aquarium", "Reptile", "Others"  
]



# Generate seeds
if User.count == 0
  User.create(username:"Bobo", email: "test0@test.com", password: "123456", password_confirmation: "123456" )
end

if Category.count == 0
  categories.each do |category|
    Category.create(name: category)
    puts "Created #{category} pet category"
  end
end