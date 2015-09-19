require 'test_helper'

class ReiteosControllerTest < ActionController::TestCase
  setup do
    @reiteo = reiteos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reiteos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reiteo" do
    assert_difference('Reiteo.count') do
      post :create, reiteo: { description: @reiteo.description }
    end

    assert_redirected_to reiteo_path(assigns(:reiteo))
  end

  test "should show reiteo" do
    get :show, id: @reiteo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reiteo
    assert_response :success
  end

  test "should update reiteo" do
    patch :update, id: @reiteo, reiteo: { description: @reiteo.description }
    assert_redirected_to reiteo_path(assigns(:reiteo))
  end

  test "should destroy reiteo" do
    assert_difference('Reiteo.count', -1) do
      delete :destroy, id: @reiteo
    end

    assert_redirected_to reiteos_path
  end
end
