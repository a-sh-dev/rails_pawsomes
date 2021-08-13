class Category < ApplicationRecord
  has_many :breeds, dependent: :destroy
end
