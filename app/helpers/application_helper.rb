module ApplicationHelper

  # Helper method for flash alert message
  def flash_class(level)
    bootstrap_alert_class = {
      "success" => "alert-success",
      "error"   => "alert-danger",
      "notice"  => "alert-info",
      "alert"   => "alert-danger",
      "warn"    => "alert-warning"
    }
    bootstrap_alert_class[level]
  end

  # Helper for pet card that is available on all pagees
  def profile_photo_select(pet)
    # user uploaded photo for pet profile
    return pet.profile_photo if pet.profile_photo.attached?
    # otherwise use default image
    return "pet_profile_def_green_1000"
  end


end
