class Api::V1::ExoticsController < ApplicationController
  before_action :find_exotic, only: %i[:update destroy]

  def index
    @exotics = Exotic.order(name: :DESC)
    render json: @exotics
  end

  def create
    @exotic = Exotic.new(exotic_params)
    @exotic.save
  end

  def destroy
    @exotic.delete
  end

  def update
    @exotic.update(params.permit(:name, :image_url, :content))
  end

  private

  def exotic_params
    params.permit(:name, :image_url, :content)
  end

  def find_exotic
    @exotic = Exotic.find(params[:id])
  end
end
