require 'test_helper'
include Devise::TestHelpers

class AvatarControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
