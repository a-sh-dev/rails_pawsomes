FactoryBot.define do
  factory :location do
    country { "MyString" }
    state { "MyString" }
    city { "MyString" }
    user { nil }
  end
end
