require 'test_helper'
include Devise::TestHelpers

class CategoryUserControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end


end
