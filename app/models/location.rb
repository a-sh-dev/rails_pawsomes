class Location < ApplicationRecord
  belongs_to :user

  # Location validations
  validates :country, :city, presence: true 


  
end
