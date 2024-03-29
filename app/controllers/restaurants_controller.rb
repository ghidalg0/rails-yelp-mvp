class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restau_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def show
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restau_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
