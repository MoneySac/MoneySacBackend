class AvatarController < ApplicationController
  def edit
  	@user = User.find( current_user.id )
  end

  def index
  	@user = User.find( current_user.id )
  end

  # PATCH/PUT /avatar/1
  def update
  	@user = User.find(current_user.id)
  	@user.update(user_params)
  	#@user = User.create( user_params )
  end

  private 
  
  def user_params
      params.require(:user).permit(:avatar)
  end
end
