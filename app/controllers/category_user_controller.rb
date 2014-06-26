class CategoryUserController < ApplicationController
  def index
  	@categories = Category.all.order(:name)
  end

  def new
  	# if the user is not already added, add him to the category
  	unless Category.find(params[:category_id]).users.exists?(current_user)
  		Category.find(params[:category_id]).users << current_user
  	end
  	redirect_to category_user_index_path
  end

  def edit
  end

  def delete
  end
end
