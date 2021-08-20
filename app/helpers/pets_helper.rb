module PetsHelper
  
  # Check if the current user is the pet owner 
  def user_is_pet_owner(pet)
    (pet.owner_id == current_user&.id) || current_user&.admin?
  end
  
  # Check for exisiting support
  def current_user_is_supporting(current_user_id, pet_id)
    support = Support.find_by(supporter_id: current_user_id, supported_pet_id: pet_id)
    return true if support
  end

  # Display icon for pet's gender
  def display_gender(pet)
    if pet.male?
      return "mars"
    elsif
      pet.female?
      return "venus"
    else
      return ""
    end
  end

  # Default image for pet profile
  def profile_photo_select(pet)
    # user uploaded photo for pet profile
    return pet.profile_photo if pet.profile_photo.attached?
    # otherwise use default image
    return "pet_profile_def_green_1000"
  end

  # Show pet siblings if any
  def siblings_exist(pet)
    return true if pet.owner.pets.count > 1
  end

end
