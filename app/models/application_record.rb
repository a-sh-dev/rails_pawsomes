class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # Load supported_pets if suppoting in "my_pets"
  scope :that_are_supported, -> (supported_pets) { where pet_id: supported_pets }

end
