class User < ApplicationRecord
  # Model relationships
  belongs_to :location
  accepts_nested_attributes_for :location

  # Users with the role "owner" can have many pets
  has_many :pets, foreign_key: "owner_id", inverse_of: "owner", dependent: :destroy 

  # User other than the Pet owner can be a supporter of many pets through Support
  has_many :supports, foreign_key: :supporter_id, dependent: :destroy
  has_many :supported_pets, through: :supports, dependent: :destroy 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # User details validations
  validates :username, presence: true, length: { in: 3..20 }, format: { with: /\A[a-zA-Z0-9_]+\z/, message: "no spaces or symbols except underscores are allowed" }, uniqueness: { case_sensitive: false } 

  validates :bio, length: { maximum: 250, too_long: "Only %{count} max characters allowed" }, allow_blank: true

  # Callout methods
  before_save :lowercase_username

  # User's roles
  enum role: {
    admin: 0,
    owner: 1,
    regular: 2,
  }
  

  def display_location
    "#{self.location.city}, #{self.location.country}".titlecase
  end

  private

    def lowercase_username
      self.username.downcase!
    end
  


end

