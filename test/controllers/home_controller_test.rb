require 'test_helper'
include Devise::TestHelpers

class HomeControllerTest < ActionController::TestCase
  setup do
	@user = users(:one)
    sign_in @user
  end

  test "should get overview" do
    get :overview
    assert_response :success
  end

end
