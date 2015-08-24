require 'test_helper'

class FormularsControllerTest < ActionController::TestCase
  setup do
    @formular = formulars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formulars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formular" do
    assert_difference('Formular.count') do
      post :create, formular: { first_name: @formular.first_name, information: @formular.information, last_name: @formular.last_name, site: @formular.site, street: @formular.street, zip: @formular.zip }
    end

    assert_redirected_to formular_path(assigns(:formular))
  end

  test "should show formular" do
    get :show, id: @formular
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formular
    assert_response :success
  end

  test "should update formular" do
    patch :update, id: @formular, formular: { first_name: @formular.first_name, information: @formular.information, last_name: @formular.last_name, site: @formular.site, street: @formular.street, zip: @formular.zip }
    assert_redirected_to formular_path(assigns(:formular))
  end

  test "should destroy formular" do
    assert_difference('Formular.count', -1) do
      delete :destroy, id: @formular
    end

    assert_redirected_to formulars_path
  end
end
