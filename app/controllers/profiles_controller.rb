class ProfilesController < ApplicationController

  before_action :authenticate_user!
  
  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.create_profile(profile_params)
    if @profile.save
      redirect_to '/food_swaps'
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:username,:bio)
  end

end
