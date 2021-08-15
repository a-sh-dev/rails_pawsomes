class Breed < ApplicationRecord
  belongs_to :category
  has_many :pets
  accepts_nested_attributes_for :category

  # validates :name, uniqueness: { scope: :category_id }
  before_save :existing_breed_record


  def existing_breed_record
    if self.where(category_id && name).exists?
      return self.id
    end
  end
  

end
