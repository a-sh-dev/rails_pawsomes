class Breed < ApplicationRecord
  belongs_to :category
  has_many :pets, dependent: :destroy 
  accepts_nested_attributes_for :category

  # validates :name, uniqueness: { scope: :category_id }
  # before_save :existing_breed_record

  private

    #! TO FIX: currently duplicates record, not using existing one 
    # def existing_breed_record
    #   # self.id = Breed.find_by(category_id: category_id, name: name) if !Breed.find_by(category_id: category_id, name: name).nil?

    #   if self.find_by(category_id, name).exists?
    #     return self.id
    #   end
    # end


    
  

end
