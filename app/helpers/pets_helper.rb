module PetsHelper

  def display_pet_age 
    ((Time.now - self.dob.to_time) / 1.year.seconds).floor
  end 

  def age
    today = Date.today
    d = Date.new(today.year, dob.month, dob.day)
    age = d.year - dob.year - (d > today ? 1 : 0)
  end

end
