class Location < ApplicationRecord
  has_many :users, dependent: :destroy

  # Location validations
  validates :country, :city, presence: true, format: { with: /\A[a-zA-Z][a-zA-Z ]+\z/, message: "alphabets only are allowed" } 

  # Callout methods
  before_save :lowercase_location_inputs
  before_save :remove_whitespace


  # ! NOTE: Ideally there should be seperate Country & City models created to prevent database duplicates

  private

    def lowercase_location_inputs
      self.country.downcase!
      self.state.downcase! if self.state.present?
      self.city.downcase!
    end

    def remove_whitespace
      self.country = self.country.strip
      self.city = self.city.strip
    end
  



end
