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
  pawlice = User.new(
    username: "Pawlice",
    email: "pawlice_admin@admin-test.com.au",
    password: "paw123456",
    password_confirmation: "paw123456",
    role: 0,
    pet_owner: true,
    paypal_me: "pawlice_admin@admin-test.com.au"
    bio: "I pawtrol the Pawsomes community"
  )
  pawlice.location = Location.new(
    country: "Australia", state: "Victoria", city: "Melbourne"
  )
  pawlice.save

  u_owner = User.new(
    username: "dididodo_fan",
    email: "pawlice_admin@admin-test.com.au",
    password: "paw123456",
    password_confirmation: "paw123456",
    role: 0,
    pet_owner: true,
    paypal_me: "pawlice_admin@admin-test.com.au"
    bio: "I pawtrol the Pawsomes community"
  )
  u_owner.location = Location.new(
    country: "Australia", state: "Victoria", city: "Melbourne"
  )
  u_owner.save
end

if Category.count == 0
  categories.each do |category|
    Category.create(name: category)
    puts "Created #{category} pet category"
  end
end