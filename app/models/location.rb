class Location < ApplicationRecord
  has_many :users

  # Location validations
  validates :country, :city, presence: true 

  # Callout methods
  before_save :lowercase_location_inputs


  private

  def lowercase_location_inputs
    self.country.downcase!
    self.state.downcase! if self.state.present?
    self.city.downcase!
  end



end
