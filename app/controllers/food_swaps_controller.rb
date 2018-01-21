class FoodSwapsController < ApplicationController

  before_action :authenticate_user!, :except => [:show, :index]

  def index
    if current_user and Profile.exists?(user_id: current_user.id)
      @profile = current_user.profile
      @display_name = helpers.get_display_name(@profile)
    end
    @food_swaps = FoodSwap.all
  end

  def new
    @swap = FoodSwap.new
  end

  def create
    FoodSwap.create(swap_params)
    redirect_to '/food_swaps'
  end

  def swap_params
    params.require(:food_swap).permit(:title,:spots_available)
  end

end
