require 'test_helper'

class OutlooksControllerTest < ActionController::TestCase
  setup do
    @outlook = outlooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outlooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outlook" do
    assert_difference('Outlook.count') do
      post :create, outlook: { clave: @outlook.clave, correo: @outlook.correo, nombre: @outlook.nombre }
    end

    assert_redirected_to outlook_path(assigns(:outlook))
  end

  test "should show outlook" do
    get :show, id: @outlook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outlook
    assert_response :success
  end

  test "should update outlook" do
    patch :update, id: @outlook, outlook: { clave: @outlook.clave, correo: @outlook.correo, nombre: @outlook.nombre }
    assert_redirected_to outlook_path(assigns(:outlook))
  end

  test "should destroy outlook" do
    assert_difference('Outlook.count', -1) do
      delete :destroy, id: @outlook
    end

    assert_redirected_to outlooks_path
  end
end
