require 'test_helper'

class RegularPionnersControllerTest < ActionController::TestCase
  setup do
    @regular_pionner = regular_pionners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regular_pionners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regular_pionner" do
    assert_difference('RegularPionner.count') do
      post :create, regular_pionner: { designation_date: @regular_pionner.designation_date, name: @regular_pionner.name, removal_date: @regular_pionner.removal_date }
    end

    assert_redirected_to regular_pionner_path(assigns(:regular_pionner))
  end

  test "should show regular_pionner" do
    get :show, id: @regular_pionner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regular_pionner
    assert_response :success
  end

  test "should update regular_pionner" do
    patch :update, id: @regular_pionner, regular_pionner: { designation_date: @regular_pionner.designation_date, name: @regular_pionner.name, removal_date: @regular_pionner.removal_date }
    assert_redirected_to regular_pionner_path(assigns(:regular_pionner))
  end

  test "should destroy regular_pionner" do
    assert_difference('RegularPionner.count', -1) do
      delete :destroy, id: @regular_pionner
    end

    assert_redirected_to regular_pionners_path
  end
end
