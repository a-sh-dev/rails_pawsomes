class Location < ApplicationRecord
  has_many :users, dependent: :destroy

  # Location validations
  validates :country, :city, presence: true, format: { with: /\A[a-zA-Z][a-zA-Z ]+\z/, message: "alphabets only are allowed" } 

  # Callout methods
  before_save :lowercase_location_inputs


  # ! NOTE: Ideally there should be seperate Country & City models created to prevent duplicates

  private

  def lowercase_location_inputs
    self.country.downcase!
    self.state.downcase! if self.state.present?
    self.city.downcase!
  end



end
