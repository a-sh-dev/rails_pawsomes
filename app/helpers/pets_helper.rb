module PetsHelper

  def profile_photo_select(pet)
    # user uploaded photo for pet profile
    return pet.profile_photo if pet.profile_photo.attached?
    # otherwise use default image
    return "pet_profile_def_green_1000"
  end
  
  # check if the current user is the pet owner 
  def user_is_pet_owner(pet)
    pet.owner_id == current_user&.id 
  end
  
  # check for exisiting support
  def current_user_is_supporting(current_user_id, pet_id)
    support = Support.find_by(supporter_id: current_user_id, supported_pet_id: pet_id)
    return true if support
  end
  
  # display icon for pet's gender
  def display_gender
    if self.male?
      return 
    end
  end

end
