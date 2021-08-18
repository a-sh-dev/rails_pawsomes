class SupportsController < ApplicationController
  before_action :set_pet

  def support_pet
    @pet = Pet.find_by!(id: params[:pet_id])
    if current_user.support @pet.id
      respond_to do |format|
        format.html { redirect_to @pet, notice: "Pawesomes! You've become this Pet's sup-paw-ter!" }
        format.js
      end
    end
  end

  def unsupport_pet
    @pet = Pet.find_by!(id: params[:pet_id])
    if current_user.unsupport @pet.id
      respond_to do |format|
        format.html { redirect_to @pet, notice: "You're no longer supporting this Pet." }
        format.js
      end
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end
    


end

