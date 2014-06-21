require 'test_helper'
include Devise::TestHelpers

class WelcomeControllerTest < ActionController::TestCase
  setup do
        @user = users(:one)
    sign_in @user
  end
	
  test "should get index" do
    get :index
    assert_response :success
  end

end
