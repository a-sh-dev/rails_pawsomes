class Pet < ApplicationRecord
  # Model Associations
  belongs_to :owner, foreign_key: "owner_id", class_name: "User"
  belongs_to :breed
  accepts_nested_attributes_for :breed
  has_one :category, through: :breed
  has_one_attached :profile_photo

  # Pet has many supporter Users (other than the owner) through Support
  has_many :supports, foreign_key: :supported_pet_id
  has_many :supporters, through: :supports

  # Directly links Pet to Category -> Pet.last.category (instead of Pet.last.breed.category)
  delegate :category, to: :breed

  # Validations
  validates :name, presence: true, format: { with: /\A[a-zA-Z][a-zA-Z ]+\z/, message: "only alphabets and spaces are allowed" } 
  
  validates :instagram, length: { in: 3..30 }, format: { with: /\A[a-zA-Z0-9_.]+\z/, message: "no spaces or symbols except periods and underscores are allowed" }, allow_blank: true 

  validates :bio, length: { maximum: 250, too_long: "Only %{count} max characters allowed" }, allow_blank: true

  validates :gender, :dob, presence: true

  # validates_attachment :profile_photo, presence: true, content_type: { content_type: "image/png, image/jpeg, image/jpg" }

  # Callout methods
  before_save :remove_whitespace
  before_save :lowercase_name

  # Pet's gender
  enum gender: {
    male: 0, female: 1, unknown: 2,
  }

  # Supports Methods to work with the controller
  def support(pet_id)
    Support.create(supported_pet_id: pet_id)
  end
  
  def unsupport(pet_id)
    Support.find_by(supported_pet_id: pet_id).destroy
  end


  def display_age
    age = Date.today.year - self.dob.year
    age -= 1 if Date.today < self.dob + age.years
    
    if age < 1
      "Less than a year old"
    elsif age == 1
      "#{age} year old"
    else
      "#{age} years old"
    end
  end

  def display_category_breed
    if self.category.name == "Others" && self.breed.name == "unknown"
      return "Pet Profile"
    elsif
      self.breed.name == "unknown"
        return "#{self.category.name}".titlecase
    else
      "#{self.category.name} – #{self.breed.name}".titlecase
    end
  end
  
  def display_owner_location
    "#{self.owner.location.city}, #{self.owner.location.country}".titlecase
  end
  
  def display_dob
    "#{self.dob.strftime("%e %b %Y")}" 
  end
  

  private

    def remove_whitespace
      self.name = self.name.strip
      self.instagram = self.instagram.strip
      self.bio = self.bio.strip
    end

    def lowercase_name
      self.name.downcase!
    end
  
end
