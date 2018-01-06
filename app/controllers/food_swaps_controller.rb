class FoodSwapsController < ApplicationController

  def index
    @food_swaps = FoodSwap.all
  end

  def new
    @swap = FoodSwap.new
  end

  def create
    FoodSwap.create(restaurant_params)
    redirect_to '/food_swaps'

  end

  def restaurant_params
    params.require(:food_swap).permit(:title,:spots_available)
  end

end
