module UsersHelper

  # Set user's role upon registration
  def set_user_role
    user.pet_owner ? user.role == :owner : user.role == :regular
  end
  
  # def get_user_role_on_signup
  #   params[:role] ? params[:role] : resource.role
  # end


end