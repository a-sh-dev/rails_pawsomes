class Category < ApplicationRecord
  has_many :breeds, dependent: :destroy
  has_many :pets, through: :breed
end
