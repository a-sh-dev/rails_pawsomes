module PetsHelper

  def profile_photo_select(pet)
    # user uploaded photo for pet profile
    return pet.profile_photo if pet.profile_photo.attached?
    # otherwise use default image
    return "pet_profile_def_green_1000"
  end
  



end
