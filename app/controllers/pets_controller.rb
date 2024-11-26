class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :destroy, :edit, :update]
  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create!(pet_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  def edit

  end

  def update
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :species, :date_lost)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
