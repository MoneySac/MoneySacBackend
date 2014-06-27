class HomeController < ApplicationController
  def overview
  	@recent_sacentries = SacEntry.where("DATE(created_at) > DATE(?) AND user_id = ?", 1.week.ago, current_user.id)
  end
end
