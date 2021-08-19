class SupportsController < ApplicationController

  # ! TOFIX: routing error, unfortunately not working yet, not sure why pet couldn't be found
  def support_pet
    @pet = Pet.find(params[:id])
    if current_user.support(@pet)
      respond_to do |format|
        format.html { redirect_to @pet, notice: "Pawesomes! You've become this Pet's sup-paw-ter!" }
        format.js
      end
    end
  end

  def unsupport_pet
    @pet = Pet.find(params[:id])
    if current_user.unsupport(@pet)
      respond_to do |format|
        format.html { redirect_to @pet, notice: "You're no longer supporting this Pet." }
        format.js
      end
    end
  end

  def create
    pet_to_support = Pet.find(params[:id]).id
    supporter = current_user.id
    support = Support.create(supported_pet_id: pet_to_support, supporter_id: supporter)
  end
  


end

