class User < ApplicationRecord
  # Model relationships
  belongs_to :location
  accepts_nested_attributes_for :location

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # User details validations
  validates :username, presence: true, length: { in: 3..20 }, format: { with: /\A[a-zA-Z0-9_]+\z/, message: "no spaces or symbols except underscores are allowed" }, uniqueness: { case_sensitive: false } 

  validates :bio, length: { maximum: 100, too_long: "Only %{count} max characters allowed" }, allow_blank: true

  # Callout methods
  before_save :lowercase_username

  # User's roles
  enum role: {
    admin: 0,
    owner: 1,
    regular: 2,
  }

  # User model methods
  def get_location
    "#{self.location.city}, #{self.location.country}"
  end

  private

  def lowercase_username
    self.username.downcase!
  end
  

  # def age 
  #   ((Time.now - self.date_written.to_time) / 1.year.seconds).floor
  # end 

end

