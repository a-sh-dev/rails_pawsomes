class Support < ApplicationRecord
  belongs_to :supporter, foreign_key: "supporter_id", class_name: "User"
  belongs_to :supported_pet, foreign_key: "supported_pet_id", class_name: "Pet"

  # # Load supported_pets if suppoting in "my_pets"
  # scope :that_are_supported, -> (supported_pets) { where(pet_id: supported_pets) }
end
