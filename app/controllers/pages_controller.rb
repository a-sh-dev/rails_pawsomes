class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:account, :my_pets]

  def home
  end

  def contact
  end

  def about
  end

  # user account related
  def account
  end
  
  def my_pets
    @paw_pets = Pet.that_are_supported(current_user.supported_pets).order("created_at DESC")

    @pets = current_user.pets.order("created_at DESC")
  end



end
