class Pet < ApplicationRecord
  # Model Associations
  belongs_to :owner, foreign_key: "owner_id", class_name: "User"
  belongs_to :breed
  accepts_nested_attributes_for :breed
  has_one :category, through: :breed

  delegate :category, to: :breed

  # Validations
  validates :name, presence: true, format: { with: /\A[a-zA-Z][a-zA-Z ]+\z/, message: "only alphabets and spaces are allowed" } 
  
  validates :instagram, length: { in: 3..30 }, format: { with: /\A[a-zA-Z0-9_.]+\z/, message: "no spaces or symbols except periods and underscores are allowed" }, allow_blank: true 

  validates :bio, length: { maximum: 100, too_long: "Only %{count} max characters allowed" }, allow_blank: true

  validates :gender, :dob, presence: true

  # Callout methods
  before_save :remove_whitespace
  before_save :lowercase_name
  # before_save :check_existing_breed

  # Pet's gender
  enum gender: {
    male: 0, female: 1, unknown: 2,
  }

  private

    def remove_whitespace
      self.name = self.name.strip
      self.instagram = self.instagram.strip
      self.bio = self.bio.strip
    end

    def lowercase_name
      self.name.downcase!
    end

    #! TO FIX: Use existing breed record if exists, else, save new record
    # def check_existing_breed
    #   if new_breed = Breed.find_by(name: breed.name)
    #     self.breed = new_breed
    #   else
    #     self.breed.save!
    #   end
      
      # self.breed << Breed.find_or_create_by(name: self.breed_name, category_id: self.breed.category_id)
    # end
  

end
