module FoodSwapsHelper

  def get_display_name(profile)
    profile.nil? ? current_user.email : profile.username
  end

end
