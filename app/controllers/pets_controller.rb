class PetsController < ApplicationController
  before_action :set_pet, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_form_vars, only: [:new, :edit, :create]

  # GET /pets or /pets.json
  def index
    @pets = Pet.all
  end

  # GET /pets/1 or /pets/1.json
  def show
  end

  # GET /pets/new
  def new
    @pet = Pet.new
    @pet.build_breed
  end
  
  # GET /pets/1/edit
  def edit
  end
  
  # POST /pets or /pets.json
  def create
    @pet = current_user.pets.new(pet_params)

    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: "Pet was successfully added." }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pets/1 or /pets/1.json
  def update
    respond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to @pet, notice: "Pet was successfully updated." }
        format.json { render :show, status: :ok, location: @pet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1 or /pets/1.json
  def destroy
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to pets_url, notice: "Pet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_params
      params.require(:pet).permit(:owner_id, :name, :dob, :gender, :bio, :instagram, breed_attributes: [:name, :category_id])
    end

    def set_form_vars
      @categories = Category.all
      @gender = Pet.genders.keys
    end
    

end
