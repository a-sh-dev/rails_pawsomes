# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Generate seeds
if Location.count == 0
  au_mel = Location.create(country: "australia", city: "melbourne")
  in_yog = Location.create(country: "indonesia", city: "yogyakarta")
  sk_seo = Location.create(country: "south korea", city: "seoul")
  us_ny = Location.create(country: "america", city: "new york")
  nw_os = Location.create(country: "norway", city: "oslo")
end

if User.count == 0
  users = User.create(
    [
      {
        username: "pawlice",
        email: "admin@admin-test.com",
        password: "paw123456",
        password_confirmation: "paw123456",
        role: 0,
        pet_owner: true,
        paypal_me: "pawlice_pawsomes",
        bio: "I regularly pawtrol the Pawsomes community",
        location_id: Location.find_by(country: "australia").id
      },
      {
        username: "dididodo",
        email: "test0@test.com",
        password: "123456",
        password_confirmation: "123456",
        role: 1,
        pet_owner: true,
        bio: "All the nine cats are rescued from streets. My mother and I will continue to foster rescued cats for adoptions.",
        location_id: Location.find_by(country: "south korea").id
      },
      {
        username: "jellibins",
        email: "test01@test.com",
        password: "123456",
        password_confirmation: "123456",
        role: 1,
        pet_owner: true,
        bio: "Family of 6 indoor cats. From the oldest: Celamet, Boi, Embin, Gembulita, Cenil, and Bule",
        location_id: Location.find_by(country: "indonesia").id
      },
      {
        username: "coder_pets",
        email: "test1@test.com",
        password: "123456",
        password_confirmation: "123456",
        role: 1,
        pet_owner: true,
        bio: "These are the pets owned by Melbourne's FX1 2021 cohorts",
        location_id: Location.find_by(country: "australia").id
      },
      {
        username: "oaksoosoo",
        email: "test1a@test.com",
        password: "123456",
        password_confirmation: "123456",
        role: 1,
        pet_owner: true,
        bio: "Come and hangout together with your pets at Boris and Horton!",
        location_id: Location.find_by(country: "america").id
      },
      {
        username: "kathyg",
        email: "test1ab@test.com",
        password: "123456",
        password_confirmation: "123456",
        role: 1,
        pet_owner: true,
        bio: "I run The Hole, a contemporary art gallery on Bowery in New York with my best friend Bobo",
        location_id: Location.find_by(country: "america").id
      },
      {
        username: "jeremyv",
        email: "test1abc@test.com",
        password: "123456",
        password_confirmation: "123456",
        role: 1,
        pet_owner: true,
        bio: "Photographer. Living life out of the Norm",
        location_id: Location.find_by(country: "america").id
      },
      {
        username: "moxie_pawrents",
        email: "test21b@test.com",
        password: "123456",
        password_confirmation: "123456",
        role: 1,
        pet_owner: true,
        bio: "Owner of Moxie and Numi",
        location_id: Location.find_by(country: "norway").id
      },
      {
        username: "minipouce",
        email: "test2@test.com",
        password: "123456",
        password_confirmation: "123456",
        role: 2,
        pet_owner: false,
        bio: "Formerly dogs lover but now I love cats more. I wish I could own my own cat, one day!",
        location_id: Location.find_by(country: "australia").id
      },
      {
        username: "kim_jung",
        email: "test3@test.com",
        password: "123456",
        password_confirmation: "123456",
        role: 2,
        pet_owner: false,
        bio: "Looking at animal photos make me happy!",
        location_id: Location.find_by(country: "south korea").id
      },
    ]
  )
  puts "--------> #{User.count} created"
end

# if User.count == 0
#   pawlice = User.new(
#     username: "Pawlice",
#     email: "admin@admin-test.com.au",
#     password: "paw123456",
#     password_confirmation: "paw123456",
#     role: 0,
#     pet_owner: true,
#     paypal_me: "pawlice_admin@admin-test.com.au",
#     bio: "I regularly pawtrol the Pawsomes community"
#   )
#   pawlice.location_id = aus_mel.id
#   pawlice.save

#   u_owner1 = User.new(
#     username: "dididodo_fan",
#     email: "test0@test.com",
#     password: "123456",
#     password_confirmation: "123456",
#     role: 1,
#     pet_owner: true,
#     bio: "All the nine cats are rescued from streets. My mother and I will continue to foster rescued cats for adoptions."
#   )
#   u_owner1.location_id = sk_seo.id
#   u_owner1.save

  # u_owner2 = User.new(
  #   username: "jellibins_fan",
  #   email: "test0@test.com",
  #   password: "123456",
  #   password_confirmation: "123456",
  #   role: 1,
  #   pet_owner: true,
  #   bio: "Family of 6 indoor cats. From the oldest: Celamet, Boi, Embin, Gembulita, Cenil, and Bule"
  # )
  # u_owner2.location_id = ind_yog.id
  # u_owner2.save

  # u_owner3 = User.new(
  #   username: "coder_pets",
  #   email: "test1@test.com",
  #   password: "123456",
  #   password_confirmation: "123456",
  #   role: 1,
  #   pet_owner: true,
  #   bio: "These are the pets owned by Melbourne's FX1 2021 cohorts"
  # )
  # u_owner3.location_id = aus_mel.id
  # u_owner3.save
  
  # u_owner4 = User.new(
  #   username: "oaksoosoo",
  #   email: "test1a@test.com",
  #   password: "123456",
  #   password_confirmation: "123456",
  #   role: 1,
  #   pet_owner: true,
  #   bio: "Come and hangout with your pets at Boris and Horton!"
  # )
  # u_owner4.location_id = us_ny.id
  # u_owner4.save
  
  # u_owner5 = User.new(
  #   username: "kathyg",
  #   email: "test1ab@test.com",
  #   password: "123456",
  #   password_confirmation: "123456",
  #   role: 1,
  #   pet_owner: true,
  #   bio: "I run The Hole, a contemporary art gallery on Bowery in New York with my best friend Bobo"
  # )
  # u_owner5.location_id = us_ny.id
  # u_owner5.save

  # u_reg1 = User.new(
  #   username: "minipouce",
  #   email: "test2@test.com",
  #   password: "123456",
  #   password_confirmation: "123456",
  #   role: 2,
  #   pet_owner: false,
  #   bio: "Formerly dogs lover but now I love cats more. I wish I could own my own cat, one day!"
  # )
  # u_reg1.location_id = aus_mel.id
  # u_reg1.save
  
#   u_reg2 = User.new(
#     username: "kim_jung_pet",
#     email: "test2c@test.com",
#     password: "123456",
#     password_confirmation: "123456",
#     role: 2,
#     pet_owner: false,
#     bio: "Looking at animal photos make me happy!"
#   )
#   u_reg2.location_id = sk_seo.id
#   u_reg2.save
# end

# Pet Categories
categories = [
  "Cat", "Dog", "Small Mammal", "Bird", "Aquarium", "Reptile", "Others"  
]

if Category.count == 0
  categories.each do |category|
    Category.create(name: category)
    puts "--------> Created #{category} pet category"
  end
end

# Pet Breed
if Breed.count == 0
  cat1 = Breed.create({ name: "domestic short hair", category_id: 1 })
  cat2 = Breed.create({ name: "domestic long hair", category_id: 1 })
  cat3 = Breed.create({ name: "unknown", category_id: 1 })
  cat4 = Breed.create({ name: "munchkin", category_id: 1 })
  
  dog1 = Breed.create({ name: "pomeranian", category_id: 2 })
  dog2 = Breed.create({ name: "dachshund", category_id: 2 })
  dog3 = Breed.create({ name: "pug", category_id: 2 })
  dog4 = Breed.create({ name: "toller", category_id: 2 })

  sm1 = Breed.create({ name: "chipmunk", category_id: 3 })
  oth = Breed.create({ name: "unknown", category_id: 7 })

  puts "--------> Created #{Breed.count} breeds"
end

# Pets -- gender: {male: 0, female: 1, unknown: 2}
if Pet.count == 0
  pets = Pet.create(
    [
      {
        owner_id: User.find_by(username: "dididodo").id,
        breed_id: cat1.id,
        name: "nyomi",
        dob: "25-12-2017",
        gender: 0,
        bio: "Blue crossed eyed handsome gentle cat who can't get fat",
        instagram: "dididodo_",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "dididodo").id,
        breed_id: cat1.id,
        name: "goguma",
        dob: "10-04-2015",
        gender: 1,
        bio: "My name means sweet potato and I love to groom my pawrent and fellow cats",
        instagram: "dididodo_",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "dididodo").id,
        breed_id: cat1.id,
        name: "kong",
        dob: "10-04-2021",
        gender: 0,
        bio: "My name means sweet potato and I love to groom my pawrent and fellow cats",
        instagram: "dididodo_",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "dididodo").id,
        breed_id: cat1.id,
        name: "pipi",
        dob: "10-04-2019",
        gender: 1,
        bio: "I only meow back when grandma calls my name",
        instagram: "dididodo_",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "jellibins").id,
        breed_id: cat2.id,
        name: "cenil",
        dob: "01-07-2021",
        gender: 1,
        bio: "My dad is a munchkin cat, and mum is a persian cat, aren't I cute?",
        instagram: "jellibins",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "jellibins").id,
        breed_id: cat4.id,
        name: "embin",
        dob: "20-05-2020",
        gender: 0,
        bio: "I may be short, but my wife is a gorgeous Persian cat and I love my cute kids! I don't like sharing my plastic spoon toy.",
        instagram: "jellibins",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "jellibins").id,
        breed_id: cat1.id,
        name: "celamet",
        dob: "01-12-2018",
        gender: 0,
        bio: "Introvert cat to the max, loves to sleep and favourite time is watching the sunset through the laundry's windows...",
        instagram: "jellibins",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "jellibins").id,
        breed_id: cat1.id,
        name: "mboi",
        dob: "01-12-2019",
        gender: 0,
        bio: "I'm the boss in the jellibins family. I watch over how my hoomans handle money, after all, I'm the CEO. I am also the nicest one in the family.",
        instagram: "jellibins",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "coder_pets").id,
        breed_id: cat1.id,
        name: "larik",
        dob: "09-10-2008",
        gender: 0,
        bio: "Larik can be the nicest or the meanest cat in the world, but he is MUCH loved regardless. (Pawrent: Iryna)",
        instagram: "",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "coder_pets").id,
        breed_id: cat2.id,
        name: "cosette",
        dob: "14-10-2015",
        gender: 1,
        bio: "I love to snuggle and enjoy my meowmy's warmth in the morning when she works. (Pawrent: Celine)",
        instagram: "",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "coder_pets").id,
        breed_id: cat2.id,
        name: "thunder",
        dob: "05-06-2017",
        gender: 1,
        bio: "I'm a demanding cat who doesn't like it if my meowmy ignores me while she works at home. (Pawrent: Bella)",
        instagram: "",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "coder_pets").id,
        breed_id: sm1.id,
        name: "chippy",
        dob: "05-06-2019",
        gender: 0,
        bio: "I love macademian nuts, I can fill up to 20 in my tiny mouth",
        instagram: "",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "kathyg").id,
        breed_id: dog1.id,
        name: "bertram",
        dob: "01-05-2013",
        gender: 0,
        bio: "I am the BOBO! I was adopted off Petfinder from a shelter in OK and now live in NYC and work at an art gallery The Hole with my best friend Kathy.",
        instagram: "bertiebertthepom",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "oaksoosoo").id,
        breed_id: dog1.id,
        name: "oakkie",
        dob: "25-12-2018",
        gender: 0,
        bio: "I love it when mum asks me to potty and when she brushes me so I could be this fluffy!",
        instagram: "oaksoosoo",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "moxie_pawrents").id,
        breed_id: dog4.id,
        name: "moxie",
        dob: "01-11-2015",
        gender: 1,
        bio: "I was Norway's 2018 cutest pet. I appeared on national TV once",
        instagram: "moxiethetoller",
        profile_photo: File.open("app/assets/images/")
      },
      {
        owner_id: User.find_by(username: "jeremyv").id,
        breed_id: dog3.id,
        name: "norm",
        dob: "18-08-2010",
        gender: 0,
        bio: "I'm the selfie doggo. I love to travel with my Jeremy",
        instagram: "jeremyveach",
        profile_photo: File.open("app/assets/images/")
      }
    ]
  )
  puts "--------> Created #{Pet.count} pets"
end

# if Pet.count == 0
#   pet_cat1 = Pet.create(
#     {
#       owner_id: u_owner1.id,
#       breed_id: cat3.id,
#       name: "nyomi",
#       dob: "01-01-2019",
#       gender: 0,
#       bio: "Blue crossed eyed who can't get fat",
#       instagram: "dididodo_"
#     }
#   )

  # pet_cat2 = Pet.create(
  #   {
  #     owner_id: u_owner2.id,
  #     breed_id: cat3.id,
  #     name: "cenil",
  #     dob: "01-07-2021",
  #     gender: 1,
  #     bio: "My dad is a munchkin cat, and mum is a persian cat, aren't I cute?",
  #     instagram: "jellibins"
  #   }
  # )

  # pet_cat2b = Pet.create(
  #   {
  #     owner_id: u_owner2.id,
  #     breed_id: cat4.id,
  #     name: "embin",
  #     dob: "01-05-2020",
  #     gender: 0,
  #     bio: "I may be short, but my wife is a gorgeous Persian cat and I love my cute kids! I don't like sharing my plastic spoon toy.",
  #     instagram: "jellibins"
  #   }
  # )

  # pet_cat3 = Pet.create(
  #   {
  #     owner_id: u_owner3.id,
  #     breed_id: cat1.id,
  #     name: "larik",
  #     dob: "09-10-2008",
  #     gender: 0,
  #     bio: "Larik can be the nicest or the meanest cat in the world, but he is MUCH loved regardless. (Pawrent: Iryna)"
  #   }
  # )

  # pet_cat4 = Pet.create(
  #   {
  #     owner_id: u_owner3.id,
  #     breed_id: cat2.id,
  #     name: "cosette",
  #     dob: "14-10-2015",
  #     gender: 1,
  #     bio: "I love to snuggle and enjoy my meowmy's warmth in the morning when she works. (Pawrent: Celine)"
  #   }
  # )
  
  # pet_cat4b = Pet.create(
  #   {
  #     owner_id: u_owner3.id,
  #     breed_id: cat2.id,
  #     name: "thunder",
  #     dob: "05-06-2017",
  #     gender: 1,
  #     bio: "I'm a demanding cat who doesn't like it if my meowmy ignores me while she works at home. (Pawrent: Celine)"
  #   }
  # )

  # pet_dog1 = Pet.create(
  #   {
      # owner_id: u_owner4.id,
      # breed_id: dog1.id,
      # name: "oakkie",
      # dob: "25-12-2018",
      # gender: 0,
      # bio: "I love it when mum asks me to potty and when she brushes me so I could be this fluffy!",
      # instagram: "oaksoosoo"
  #   }
  # )

#   pet_dog2 = Pet.create(
#     {
#       owner_id: u_owner5.id,
#       breed_id: dog1.id,
#       name: "bertram",
#       dob: "01-05-2013",
#       gender: 0,
#       bio: "I am the BOBO! I was adopted off Petfinder from a shelter in OK and now live in NYC and work at an art gallery The Hole with my best friend Kathy.",
#       instagram: "bertiebertthepom"
#     }
#   )

# end


