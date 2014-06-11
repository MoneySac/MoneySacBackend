class HomeController < ApplicationController
  def overview
  	@recent_sacentries = SacEntry.where("DATE(created_at) > DATE(?)", 1.week.ago)
  end
end
