class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:account, :my_pets]

  def home
    # Featued pets - randomise 4 of existing Pets to be displayed
    @featured_pets = Pet.all.sample(4)
  end

  def contact
  end

  def about
  end

  # user account related
  def account
  end
  
  def my_pets
    # when the current user is a pet owner, display pets
    if current_user&.owner?
      @pets = current_user.pets.order("created_at DESC")
    end
    # check if current user has any supported_pets
    unless current_user.supports.nil?
      @supported_pets = current_user.supported_pets.order("created_at DESC")
    end
  end

end
