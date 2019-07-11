class Api::V1::CatsController < ApplicationController
  before_action :find_cat, only: %i[:update destroy]

  def index
    @cats = Cat.order(name: :DESC)
    render json: @cats
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.save
  end

  def destroy
    @cat.delete
  end

  def update
    @cat.update(params.permit(:name, :image_url, :content))
  end

  private

  def cat_params
    params.permit(:name, :image_url, :content, :pet_id)
  end

  def find_cat
    @cat = Cat.find(params[:id])
  end

end
