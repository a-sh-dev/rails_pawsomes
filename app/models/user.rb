class User < ApplicationRecord
  # Model relationships
  has_one :location, dependent: :destroy
  accepts_nested_attributes_for :location

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # User details validations
  validates :username, presence: true, length: { in: 3..12 }, format: { with: /\A[a-zA-Z0-9_]+\z/, message: "no spaces or symbols except underscores are allowed" }, uniqueness: { case_sensitive: false } 

  validates :bio, length: { maximum: 100, too_long: "Only %{count} max characters allowed" }, allow_blank: true

end

