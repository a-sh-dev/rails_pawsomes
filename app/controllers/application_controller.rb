class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :pet_owner, :role, location_attributes: [:country, :state, :city]])
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :pet_owner, :role, location_attributes: [:country, :state, :city]])
  end

  # redirect users aftter signed in
  def after_sign_in_path_for(resource)
    # super(resource)
    
    # redirect Owner to Add pets
    if resource.role == "owner"
      new_pet_path
    else
      # redirect the rest to pets index 
      pets_path
    end
  end

  # redirect users back to account page after account update
  def after_update_path_for(resource)
    account_path
  end
  


end
