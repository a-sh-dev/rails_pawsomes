class Breed < ApplicationRecord
  belongs_to :category
  has_many :pets
end
