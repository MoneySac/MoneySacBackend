require 'test_helper'
include Devise::TestHelpers

class SacEntriesControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    sign_in @user
    @sac_entry = sac_entries(:one)
    @update = {
      description: 'testSac', 
      amount: 22,
      category_id: 1,
      isIncome: 0,
      date: Time.now,
      time_span_id: 1
    }
  end


  test "should create sac_entry" do
    assert_difference('SacEntry.count') do
      post :create, sac_entry: @update
    end

    assert_redirected_to sac_entry_path(assigns(:sac_entry))
  end

  test "should show sac_entry" do
    get :show, id: @sac_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sac_entry
    assert_response :success
  end

  test "should update sac_entry" do
    patch :update, id: @sac_entry, sac_entry: @update
    assert_redirected_to sac_entry_path(assigns(:sac_entry))
  end

  test "should destroy sac_entry" do
    assert_difference('SacEntry.count', -1) do
      delete :destroy, id: @sac_entry
    end

    assert_redirected_to sac_entries_path
  end
end
