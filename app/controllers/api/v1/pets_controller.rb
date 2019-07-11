class Api::V1::PetsController < ApplicationController
  before_action :find_pet, only: %i[:update destroy]

  def index
    @pets = Pet.order(name: :DESC)
    render json: @pets
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
  end

  def destroy
    @pet.delete
  end

  def update
    @pet.update(params.permit(:name, :image))
  end

  private

  def pet_params
    params.permit(:name, :image)
  end

  def find_pet
    @pet = Pet.find(params[:id])
  end

end
