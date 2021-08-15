class Location < ApplicationRecord
  has_many :users, dependent: :destroy

  # Location validations
  validates :country, :city, presence: true, format: { with: /\A[a-zA-Z][a-zA-Z ]+\z/, message: "alphabets only are allowed" } 

  # Callout methods
  # before_save :use_existing_country
  # before_save :use_existing_city
  before_save :lowercase_location_inputs
  before_save :remove_whitespace


  # ! NOTE: Ideally there should be seperate Country & City models created to prevent database duplicates

  private

    def lowercase_location_inputs
      self.country.downcase! if self.state.present?
      self.state.downcase! if self.state.present?
      self.city.downcase! if self.state.present?
    end

    def remove_whitespace
      if self == !nil
      self.country = self.country.strip
      self.city = self.city.strip
    end
  
    # ! Not working yet, ideally to check existing record, if new, save
    # def use_existing_country
    #   if self.country.exists?
    #     return self.country
    #   else
    #     curent_user.params([:location][:country])
    #   end
    # end

    # def use_existing_city
    #   if self.city.exists?
    #     return self.city
    #   else
    #     curent_user.params([:location][:city])
    #   end
    # end
    

end
