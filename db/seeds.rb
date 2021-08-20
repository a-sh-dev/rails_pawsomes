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

  puts "--------> Created #{Location.count} Locations"
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
        paypal_me: "SunnySkysAnimalRescu",
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
        paypal_me: "SunnySkysAnimalRescu",
        bio: "All the nine cats are rescued from the streets. My mother and I continously foster rescued cats until they find their forever home. Your donations are greatly appreciated!",
        location_id: Location.find_by(country: "south korea").id
      },
      {
        username: "jellibins",
        email: "test01@test.com",
        password: "123456",
        password_confirmation: "123456",
        role: 1,
        pet_owner: true,
        paypal_me: "SunnySkysAnimalRescu",
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
        paypal_me: "SunnySkysAnimalRescu",
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
        paypal_me: "SunnySkysAnimalRescu",
        bio: "Come and hangout together with your pets at Boris and Horton!",
        location_id: Location.find_by(country: "america").id
      },
      {
        username: "harlowandsage",
        email: "test_h@test.com",
        password: "123456",
        password_confirmation: "123456",
        role: 1,
        pet_owner: true,
        paypal_me: "SunnySkysAnimalRescu",
        bio: "Follow Harlow, Indiana, Reese, Ezra and Mae",
        location_id: Location.find_by(country: "america").id
      },
      {
        username: "kathyg",
        email: "test1ab@test.com",
        password: "123456",
        password_confirmation: "123456",
        role: 1,
        pet_owner: true,
        paypal_me: "SunnySkysAnimalRescu",
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
        paypal_me: "SunnySkysAnimalRescu",
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
        paypal_me: "SunnySkysAnimalRescu",
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
  puts "--------> Created #{User.count} Users"
end

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

# Pet Breeds
if Breed.count == 0
  cat1 = Breed.create({ name: "domestic short hair", category_id: 1 })
  cat2 = Breed.create({ name: "domestic long hair", category_id: 1 })
  cat3 = Breed.create({ name: "unknown", category_id: 1 })
  cat4 = Breed.create({ name: "munchkin", category_id: 1 })
  cat5 = Breed.create({ name: "persian", category_id: 1 })
  cat6 = Breed.create({ name: "siamese", category_id: 1 })
  
  dog1 = Breed.create({ name: "pomeranian", category_id: 2 })
  dog2 = Breed.create({ name: "miniature dachshund", category_id: 2 })
  dog3 = Breed.create({ name: "pug", category_id: 2 })
  dog4 = Breed.create({ name: "toller", category_id: 2 })
  dog5 = Breed.create({ name: "weimaraner", category_id: 2 })

  sm1 = Breed.create({ name: "chipmunk", category_id: 3 })
  oth = Breed.create({ name: "unknown", category_id: 7 })

  puts "--------> Created #{Breed.count} Breeds"
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
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/DID_nyomi.jpeg")), filename: "DID_nyomi.jpeg")
      },
      {
        owner_id: User.find_by(username: "dididodo").id,
        breed_id: cat1.id,
        name: "goguma",
        dob: "10-04-2015",
        gender: 1,
        bio: "My name means sweet potato and I love to groom my pawrent and fellow cats",
        instagram: "dididodo_",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/DID_goguma_01.jpeg")), filename: "DID_goguma_01.jpeg")
      },
      {
        owner_id: User.find_by(username: "dididodo").id,
        breed_id: cat1.id,
        name: "kong",
        dob: "10-04-2021",
        gender: 0,
        bio: "My name means sweet potato and I love to groom my pawrent and fellow cats",
        instagram: "dididodo_",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/DID_kong.jpeg")), filename: "DID_kong.jpeg")
      },
      {
        owner_id: User.find_by(username: "dididodo").id,
        breed_id: cat1.id,
        name: "pipi",
        dob: "10-04-2019",
        gender: 1,
        bio: "I only meow back when grandma calls my name",
        instagram: "dididodo_",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/DID_pipi.jpeg")), filename: "DID_pipi.jpeg")
      },
      {
        owner_id: User.find_by(username: "jellibins").id,
        breed_id: cat2.id,
        name: "cenil and bule",
        dob: "01-07-2021",
        gender: 1,
        bio: "Twins, Cenil is the big sister – the 'princess' one, while Bule is the 'stuntmeow'. Our daddy is a munchkin cat, and mum is a Persian cat, aren't we cute?",
        instagram: "jellibins",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/JEL_cenil_bule.jpeg")), filename: "JEL_cenil_bule.jpeg")
      },
      {
        owner_id: User.find_by(username: "jellibins").id,
        breed_id: cat4.id,
        name: "embin",
        dob: "20-05-2020",
        gender: 0,
        bio: "I may be short, but my wife is a gorgeous Persian cat and I love my cute kids! I don't like sharing my plastic spoon toy.",
        instagram: "jellibins",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/JEL_mbin.jpg")), filename: "JEL_mbin.jpg")
      },
      {
        owner_id: User.find_by(username: "jellibins").id,
        breed_id: cat1.id,
        name: "celamet",
        dob: "01-12-2018",
        gender: 0,
        bio: "The most introvert cat in the pack. Loves to sleep and favourite time is watching the sunset through the laundry's windows...",
        instagram: "jellibins",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/JEL_celamet_01.jpg")), filename: "JEL_celamet_01.jpg")
      },
      {
        owner_id: User.find_by(username: "jellibins").id,
        breed_id: cat1.id,
        name: "mboi",
        dob: "01-12-2019",
        gender: 0,
        bio: "I'm the boss in the jellibins family. I watch over how my hoomans handle money, after all, I'm the CEO. I am also the nicest one in the family.",
        instagram: "jellibins",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/JEL_mboi_01.jpg")), filename: "JEL_mboi_01.jpg")
      },
      {
        owner_id: User.find_by(username: "jellibins").id,
        breed_id: cat5.id,
        name: "gembulita",
        dob: "03-05-2020",
        gender: 1,
        bio: "The queen in the pack. Persian mixed with local street orange cat. She hits his husband, Embin a lot!",
        instagram: "jellibins",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/JEL_gembulita.jpg")), filename: "JEL_gembulita.jpg")
      },
      {
        owner_id: User.find_by(username: "jellibins").id,
        breed_id: cat6.id,
        name: "willow",
        dob: "28-12-2019",
        gender: 0,
        bio: "Cousin of the Jellilbins' fam. He onced stayed over and tried to woo Gembulita, yet unsucessful...",
        instagram: "jellibins",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/JEL_willow.jpg")), filename: "JEL_willow.jpg")
      },
      {
        owner_id: User.find_by(username: "coder_pets").id,
        breed_id: cat1.id,
        name: "larik",
        dob: "09-10-2008",
        gender: 0,
        bio: "Larik can be the nicest or the meanest cat in the world, but he is MUCH loved regardless. (Pawrent: Iryna)",
        instagram: "",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/COD_larik.jpg")), filename: "COD_larik.jpg")
      },
      {
        owner_id: User.find_by(username: "coder_pets").id,
        breed_id: cat1.id,
        name: "charis",
        dob: "17-08-2019",
        gender: 0,
        bio: "Charis or Chacha wont stop eating when there are plenty of food... He's gentle and loves to cuddle during winter. (Pawrent: Ash)",
        instagram: "",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/COD_chacha_02.png")), filename: "COD_chacha_02.png")
      },
      {
        owner_id: User.find_by(username: "coder_pets").id,
        breed_id: cat2.id,
        name: "cosette",
        dob: "14-10-2015",
        gender: 1,
        bio: "I love to snuggle and enjoy my meowmy's warmth in the morning when she works. (Pawrent: Celine)",
        instagram: "",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/COD_cossette_01.jpg")), filename: "COD_cossette_01.jpg")
      },
      {
        owner_id: User.find_by(username: "coder_pets").id,
        breed_id: cat2.id,
        name: "thunder",
        dob: "05-06-2017",
        gender: 1,
        bio: "I'm a demanding cat who doesn't like it if my meowmy ignores me while she works at home. (Pawrent: Bella)",
        instagram: "",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/COD_thunder.jpg")), filename: "COD_thunder.jpg")
      },
      {
        owner_id: User.find_by(username: "coder_pets").id,
        breed_id: sm1.id,
        name: "chippy",
        dob: "05-06-2019",
        gender: 0,
        bio: "I love macademian nuts, I can fill up to 20 in my tiny mouth",
        instagram: "",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/chipmunk_01.jpeg")), filename: "chipmunk_01.jpeg")
      },
      {
        owner_id: User.find_by(username: "kathyg").id,
        breed_id: dog1.id,
        name: "bertram",
        dob: "01-05-2013",
        gender: 0,
        bio: "I am the BOBO! I was adopted off Petfinder from a shelter in OK and now live in NYC and work at an art gallery The Hole with my best friend Kathy.",
        instagram: "bertiebertthepom",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/bobo_01.jpg")), filename: "bobo_01.jpg")
      },
      {
        owner_id: User.find_by(username: "oaksoosoo").id,
        breed_id: dog1.id,
        name: "oakkie",
        dob: "25-12-2018",
        gender: 0,
        bio: "I love it when mum asks me to potty and when she brushes me so I could be this fluffy!",
        instagram: "oaksoosoo",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/oakkie_01.jpg")), filename: "oakkie_01.jpg")
      },
      {
        owner_id: User.find_by(username: "moxie_pawrents").id,
        breed_id: dog4.id,
        name: "moxie",
        dob: "01-11-2015",
        gender: 1,
        bio: "I was Norway's 2018 cutest pet. I appeared on national TV once",
        instagram: "moxiethetoller",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/moxie_01.jpg")), filename: "moxie_01.jpg")
      },
      {
        owner_id: User.find_by(username: "jeremyv").id,
        breed_id: dog3.id,
        name: "norm",
        dob: "18-08-2010",
        gender: 0,
        bio: "I'm the selfie doggo. I love to travel with my Jeremy",
        instagram: "jeremyveach",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/norm_01.jpg")), filename: "norm_01.jpg")
      },
      {
        owner_id: User.find_by(username: "harlowandsage").id,
        breed_id: dog2.id,
        name: "mae",
        dob: "19-02-2021",
        gender: 1,
        bio: "I think, I think, I'm the sweetest-cutest-babiest one!",
        instagram: "harlowandsage",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/HAR_mae_01.jpg")), filename: "HAR_mae_01.jpg")
      },
      {
        owner_id: User.find_by(username: "harlowandsage").id,
        breed_id: dog2.id,
        name: "reese",
        dob: "25-07-2014",
        gender: 1,
        bio: "The extremely sweet Reese Lightning.",
        instagram: "harlowandsage",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/HAR_reese.jpeg")), filename: "HAR_reese.jpeg")
      },
      {
        owner_id: User.find_by(username: "harlowandsage").id,
        breed_id: dog5.id,
        name: "harlow",
        dob: "18-01-2008",
        gender: 1,
        bio: "The original half of the 'Odd Couple' duo with late Sage. The one that loves people the most, and really, Harlow is the mother of the pack, trully adored and loved by the others.",
        instagram: "harlowandsage",
        profile_photo.attach(io: File.open(File.join(Rails.root, "app/assets/images/HAR_harlow.jpeg")), filename: "HAR_harlow.jpeg")
      }
    ]
  )
  puts "--------> Created #{Pet.count} Pets"  
end

# Support Relations
if Support.count == 0
  supports = Support.create(
    [
      {
        supporter_id: User.find_by_username("minipouce").id,
        supported_pet_id: Pet.find_by_name("nyomi").id
      },
      {
        supporter_id: User.find_by_username("minipouce").id,
        supported_pet_id: Pet.find_by_name("norm").id
      },
      {
        supporter_id: User.find_by_username("minipouce").id,
        supported_pet_id: Pet.find_by_name("mae").id
      },
      {
        supporter_id: User.find_by_username("minipouce").id,
        supported_pet_id: Pet.find_by_name("goguma").id
      },
      {
        supporter_id: User.find_by_username("minipouce").id,
        supported_pet_id: Pet.find_by_name("celamet").id
      },
      {
        supporter_id: User.find_by_username("minipouce").id,
        supported_pet_id: Pet.find_by_name("cosette").id
      },
      {
        supporter_id: User.find_by_username("minipouce").id,
        supported_pet_id: Pet.find_by_name("charis").id
      },
      {
        supporter_id: User.find_by_username("minipouce").id,
        supported_pet_id: Pet.find_by_name("mboi").id
      },
      {
        supporter_id: User.find_by_username("kim_jung").id,
        supported_pet_id: Pet.find_by_name("moxie").id
      },
      {
        supporter_id: User.find_by_username("kim_jung").id,
        supported_pet_id: Pet.find_by_name("bertram").id
      },
      {
        supporter_id: User.find_by_username("kim_jung").id,
        supported_pet_id: Pet.find_by_name("oakkie").id
      },
      {
        supporter_id: User.find_by_username("kim_jung").id,
        supported_pet_id: Pet.find_by_name("nyomi").id
      },
      {
        supporter_id: User.find_by_username("coder_pets").id,
        supported_pet_id: Pet.find_by_name("nyomi").id
      },
      {
        supporter_id: User.find_by_username("coder_pets").id,
        supported_pet_id: Pet.find_by_name("goguma").id
      },
      {
        supporter_id: User.find_by_username("coder_pets").id,
        supported_pet_id: Pet.find_by_name("moxie").id
      },
      {
        supporter_id: User.find_by_username("coder_pets").id,
        supported_pet_id: Pet.find_by_name("mboi").id
      },
      {
        supporter_id: User.find_by_username("coder_pets").id,
        supported_pet_id: Pet.find_by_name("mae").id
      },
      {
        supporter_id: User.find_by_username("coder_pets").id,
        supported_pet_id: Pet.find_by_name("harlow").id
      },
    ]
  )
  puts "--------> Created #{Support.count} Supports"  
end