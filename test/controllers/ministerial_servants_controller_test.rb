require 'test_helper'

class MinisterialServantsControllerTest < ActionController::TestCase
  setup do
    @ministerial_servant = ministerial_servants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ministerial_servants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ministerial_servant" do
    assert_difference('MinisterialServant.count') do
      post :create, ministerial_servant: { designation_date: @ministerial_servant.designation_date, person_id: @ministerial_servant.person_id, removal_date: @ministerial_servant.removal_date }
    end

    assert_redirected_to ministerial_servant_path(assigns(:ministerial_servant))
  end

  test "should show ministerial_servant" do
    get :show, id: @ministerial_servant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ministerial_servant
    assert_response :success
  end

  test "should update ministerial_servant" do
    patch :update, id: @ministerial_servant, ministerial_servant: { designation_date: @ministerial_servant.designation_date, person_id: @ministerial_servant.person_id, removal_date: @ministerial_servant.removal_date }
    assert_redirected_to ministerial_servant_path(assigns(:ministerial_servant))
  end

  test "should destroy ministerial_servant" do
    assert_difference('MinisterialServant.count', -1) do
      delete :destroy, id: @ministerial_servant
    end

    assert_redirected_to ministerial_servants_path
  end
end
