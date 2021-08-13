# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Generate seeds

if Location.count == 0
  aus_mel = Location.create(country: "australia", state: "victoria", city: "melbourne")

  ind_yog = Location.create(country: "indonesia", city: "yogyakarta")

  sk_seo = Location.create(country: "south korea", city: "seoul")
end

if User.count == 0
  pawlice = User.new(
    username: "Pawlice",
    email: "pawlice_admin@admin-test.com.au",
    password: "paw123456",
    password_confirmation: "paw123456",
    role: 0,
    pet_owner: true,
    paypal_me: "pawlice_admin@admin-test.com.au",
    bio: "I regularly pawtrol the Pawsomes community"
  )
  pawlice.location_id = aus_mel.id
  pawlice.save

  u_owner1 = User.new(
    username: "dididodo_fan",
    email: "test0@test.com",
    password: "123456",
    password_confirmation: "123456",
    role: 1,
    pet_owner: true,
    bio: "All the nine cats are rescued from streets and I will continue to foster rescued cats"
  )
  u_owner1.location_id = sk_seo.id
  u_owner1.save

  u_owner2 = User.new(
    username: "jellibins_fan",
    email: "test00@test.com",
    password: "123456",
    password_confirmation: "123456",
    role: 1,
    pet_owner: true,
    bio: "Family of 6 indoor cats. From the oldest: Celamet, Boi, Embin, Gembulita, Cenil, and Bule"
  )
  u_owner2.location_id = sk_seo.id
  u_owner2.save

  u_reg = User.new(
    username: "minipouce",
    email: "test10@test.com",
    password: "123456",
    password_confirmation: "123456",
    role: 2,
    pet_owner: false,
    bio: "Formerly dogs lover but now I love cats more. I wish I could own my own cat, one day!"
  )
  u_reg.location_id = aus_mel.id
  u_reg.save
end


# Pet Categories
categories = [
  "Cat", "Dog", "Small Mammal", "Bird", "Aquarium", "Reptile", "Others"  
]

if Category.count == 0
  categories.each do |category|
    Category.create(name: category)
    puts "Created #{category} pet category"
  end
end

# Pet Breed
if Breed.count == 0
  cat1 = Breed.create({ name: "domestic shorthair", category_id: 1 })
  cat2 = Breed.create({ name: "unknown", category_id: 1 })
  
  dog1 = Breed.create({ name: "pomeranian", category_id: 2 })
  dog2 = Breed.create({ name: "dachshund", category_id: 2 })
end

# Pets
# if Pet.count == 0

# end