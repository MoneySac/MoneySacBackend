class HomeController < ApplicationController
  def overview
    @recent_sacentries = SacEntry.where("DATE(created_at) > DATE(?) AND user_id = ?", 1.week.ago, current_user.id)
    @newest_categories = Category.limit(10).order('id desc')

    @cat_hash = Hash.new
    Category.all.each do |c|
      @cat_hash[c.name] = c.users.count()
    end

  end
end