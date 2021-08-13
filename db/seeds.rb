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
  us_ny = Location.create(country: "america", city: "new york")
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
    bio: "All the nine cats are rescued from streets. My mother and I will continue to foster rescued cats for adoptions."
  )
  u_owner1.location_id = sk_seo.id
  u_owner1.save

  u_owner2 = User.new(
    username: "jellibins_fan",
    email: "test0@test.com",
    password: "123456",
    password_confirmation: "123456",
    role: 1,
    pet_owner: true,
    bio: "Family of 6 indoor cats. From the oldest: Celamet, Boi, Embin, Gembulita, Cenil, and Bule"
  )
  u_owner2.location_id = ind_yog.id
  u_owner2.save

  u_owner3 = User.new(
    username: "coder_pets",
    email: "test1@test.com",
    password: "123456",
    password_confirmation: "123456",
    role: 1,
    pet_owner: true,
    bio: "These are the pets owned by Melbourne's FX1 2021 cohorts"
  )
  u_owner3.location_id = aus_mel.id
  u_owner3.save

  u_reg = User.new(
    username: "minipouce",
    email: "test2@test.com",
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
  cat1 = Breed.create({ name: "domestic short hair", category_id: 1 })
  cat2 = Breed.create({ name: "domestic long hair", category_id: 1 })
  cat3 = Breed.create({ name: "unknown", category_id: 1 })
  
  dog1 = Breed.create({ name: "pomeranian", category_id: 2 })
  dog2 = Breed.create({ name: "dachshund", category_id: 2 })
end

# Pets -- gender: {male: 0, female: 1, unknown: 2}
if Pet.count == 0
  pet_cat1 = Pet.create(
    {
      owner_id: u_owner1.id,
      breed_id: cat3.id,
      name: "nyomi",
      dob: "01-01-2019",
      gender: 0,
      bio: "blue crossed eyed who can't get fat",
      instagram: "dididodo_"
    }
  )

  pet_cat2 = Pet.create(
    {
      owner_id: u_owner2.id,
      breed_id: cat3.id,
      name: "cenil",
      dob: "01-07-2021",
      gender: 1,
      bio: "My dad is a munchkin cat, and mum is a persian cat, aren't I cute?",
      instagram: "jellibins"
    }
  )

  pet_cat3 = Pet.create(
    {
      owner_id: u_owner3.id,
      breed_id: cat1.id,
      name: "larik",
      dob: "09-10-2008",
      gender: 0,
      bio: "Larik can be the nicest or the meanest cat in the world, but he is MUCH loved regardless. (Pawrent: Iryna)",
    }
  )

  pet_cat4 = Pet.create(
    {
      owner_id: u_owner3.id,
      breed_id: cat1.id,
      name: "cosette",
      dob: "14-10-2015",
      gender: 0,
      bio: "I love to snuggle and enjoy my meowmy's warmth in the morning when she works. (Pawrent: Celine)",
    }
  )

  pet_dog1 = Pet.create(
    {
      owner_id: u_owner3.id,
      breed_id: cat1.id,
      name: "cosette",
      dob: "14-10-2015",
      gender: 0,
      bio: "I love to snuggle and enjoy my meowmy's warmth in the morning when she works. (Pawrent: Celine)",
    }
  )
end


