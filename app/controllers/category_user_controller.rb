class CategoryUserController < ApplicationController
  def index
  	@categories = Category.all.order(:name)
  end

  def new
  end

  def edit
  end

  def delete
  end
end
