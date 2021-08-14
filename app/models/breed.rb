class Breed < ApplicationRecord
  belongs_to :category
  has_many :pets
  accepts_nested_attributes_for :category
end
