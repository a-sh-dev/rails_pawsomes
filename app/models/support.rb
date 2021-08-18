class Support < ApplicationRecord
  belongs_to :supporter, foreign_key: "supporter_id", class_name: "User"
  belongs_to :supported_pet, foreign_key: "supported_pet_id", class_name: "Pet"
end
