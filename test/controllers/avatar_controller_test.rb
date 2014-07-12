require 'test_helper'

class AvatarControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
