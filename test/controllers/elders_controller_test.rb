require 'test_helper'

class EldersControllerTest < ActionController::TestCase
  setup do
    @elder = elders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elder" do
    assert_difference('Elder.count') do
      post :create, elder: { designation_date: @elder.designation_date, person_id: @elder.person_id, removal_date: @elder.removal_date }
    end

    assert_redirected_to elder_path(assigns(:elder))
  end

  test "should show elder" do
    get :show, id: @elder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @elder
    assert_response :success
  end

  test "should update elder" do
    patch :update, id: @elder, elder: { designation_date: @elder.designation_date, person_id: @elder.person_id, removal_date: @elder.removal_date }
    assert_redirected_to elder_path(assigns(:elder))
  end

  test "should destroy elder" do
    assert_difference('Elder.count', -1) do
      delete :destroy, id: @elder
    end

    assert_redirected_to elders_path
  end
end
