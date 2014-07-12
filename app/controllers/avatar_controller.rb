class AvatarController < ApplicationController
  def edit
  	@user = User.find( current_user.id )
  end

end
