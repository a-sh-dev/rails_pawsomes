FactoryBot.define do
  factory :pet do
    owner { nil }
    breed { nil }
    name { "MyString" }
    dob { "2021-08-13" }
    gender { 1 }
    bio { "MyString" }
    instagram { "MyString" }
  end
end
