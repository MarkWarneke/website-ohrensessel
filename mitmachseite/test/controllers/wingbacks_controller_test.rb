require 'test_helper'

class WingbacksControllerTest < ActionController::TestCase
  setup do
    @wingback = wingbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wingbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wingback" do
    assert_difference('Wingback.count') do
      post :create, wingback: {  }
    end

    assert_redirected_to wingback_path(assigns(:wingback))
  end

  test "should show wingback" do
    get :show, id: @wingback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wingback
    assert_response :success
  end

  test "should update wingback" do
    patch :update, id: @wingback, wingback: {  }
    assert_redirected_to wingback_path(assigns(:wingback))
  end

  test "should destroy wingback" do
    assert_difference('Wingback.count', -1) do
      delete :destroy, id: @wingback
    end

    assert_redirected_to wingbacks_path
  end
end
