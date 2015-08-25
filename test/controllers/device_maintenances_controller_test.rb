require 'test_helper'

class DeviceMaintenancesControllerTest < ActionController::TestCase
  setup do
    @device_maintenance = device_maintenances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_maintenances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_maintenance" do
    assert_difference('DeviceMaintenance.count') do
      post :create, device_maintenance: { completado: @device_maintenance.completado, correctivo: @device_maintenance.correctivo, descripcion: @device_maintenance.descripcion, fechaMantenmiento: @device_maintenance.fechaMantenmiento, leido: @device_maintenance.leido, prioridad: @device_maintenance.prioridad, realizadoPor: @device_maintenance.realizadoPor }
    end

    assert_redirected_to device_maintenance_path(assigns(:device_maintenance))
  end

  test "should show device_maintenance" do
    get :show, id: @device_maintenance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device_maintenance
    assert_response :success
  end

  test "should update device_maintenance" do
    patch :update, id: @device_maintenance, device_maintenance: { completado: @device_maintenance.completado, correctivo: @device_maintenance.correctivo, descripcion: @device_maintenance.descripcion, fechaMantenmiento: @device_maintenance.fechaMantenmiento, leido: @device_maintenance.leido, prioridad: @device_maintenance.prioridad, realizadoPor: @device_maintenance.realizadoPor }
    assert_redirected_to device_maintenance_path(assigns(:device_maintenance))
  end

  test "should destroy device_maintenance" do
    assert_difference('DeviceMaintenance.count', -1) do
      delete :destroy, id: @device_maintenance
    end

    assert_redirected_to device_maintenances_path
  end
end
