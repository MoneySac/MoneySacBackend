class CategoryUserController < ApplicationController
  def index
  	@all_categories = Category.all.order(:name)
  	@categories_owned_by_user = Category.where(user_id: current_user.id)
  	@categories = @all_categories - @categories_owned_by_user
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
  	if Category.find(params[:category_id]).users.exists?(current_user)
  		Category.find(params[:category_id]).users.delete(current_user)
  	end
  	redirect_to category_user_index_path
  end
end
