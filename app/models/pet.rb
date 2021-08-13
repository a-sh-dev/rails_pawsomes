class Pet < ApplicationRecord
  # Model Associations
  belongs_to :owner, foreign_key: "owner_id", class_name: "User"
  belongs_to :breed

  # Pet's gender
  enum gender: {
    male: 0,
    female: 1,
    unknown: 2,
  }

  private

  def display_pet_age 
    ((Time.now - self.dob.to_time) / 1.year.seconds).floor
  end 

end
