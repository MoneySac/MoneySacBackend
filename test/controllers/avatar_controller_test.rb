require 'test_helper'
include Devise::TestHelpers

class AvatarControllerTest < ActionController::TestCase

  setup do
    @user = users(:one)
    sign_in @user
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
