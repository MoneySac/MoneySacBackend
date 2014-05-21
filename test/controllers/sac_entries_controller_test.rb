require 'test_helper'

class SacEntriesControllerTest < ActionController::TestCase
  setup do
    @sac_entry = sac_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sac_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sac_entry" do
    assert_difference('SacEntry.count') do
      post :create, sac_entry: { amount: @sac_entry.amount, category_id: @sac_entry.category_id, date: @sac_entry.date, description: @sac_entry.description, id: @sac_entry.id, recurring: @sac_entry.recurring, type_id: @sac_entry.type_id }
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
    patch :update, id: @sac_entry, sac_entry: { amount: @sac_entry.amount, category_id: @sac_entry.category_id, date: @sac_entry.date, description: @sac_entry.description, id: @sac_entry.id, recurring: @sac_entry.recurring, type_id: @sac_entry.type_id }
    assert_redirected_to sac_entry_path(assigns(:sac_entry))
  end

  test "should destroy sac_entry" do
    assert_difference('SacEntry.count', -1) do
      delete :destroy, id: @sac_entry
    end

    assert_redirected_to sac_entries_path
  end
end
