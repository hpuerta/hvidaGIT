require 'test_helper'

class PcMaintenancesControllerTest < ActionController::TestCase
  setup do
    @pc_maintenance = pc_maintenances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pc_maintenances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pc_maintenance" do
    assert_difference('PcMaintenance.count') do
      post :create, pc_maintenance: { completado: @pc_maintenance.completado, correctivo: @pc_maintenance.correctivo, descripcion: @pc_maintenance.descripcion, fechaMantenmiento: @pc_maintenance.fechaMantenmiento, leido: @pc_maintenance.leido, prioridad: @pc_maintenance.prioridad, realizadoPor: @pc_maintenance.realizadoPor }
    end

    assert_redirected_to pc_maintenance_path(assigns(:pc_maintenance))
  end

  test "should show pc_maintenance" do
    get :show, id: @pc_maintenance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pc_maintenance
    assert_response :success
  end

  test "should update pc_maintenance" do
    patch :update, id: @pc_maintenance, pc_maintenance: { completado: @pc_maintenance.completado, correctivo: @pc_maintenance.correctivo, descripcion: @pc_maintenance.descripcion, fechaMantenmiento: @pc_maintenance.fechaMantenmiento, leido: @pc_maintenance.leido, prioridad: @pc_maintenance.prioridad, realizadoPor: @pc_maintenance.realizadoPor }
    assert_redirected_to pc_maintenance_path(assigns(:pc_maintenance))
  end

  test "should destroy pc_maintenance" do
    assert_difference('PcMaintenance.count', -1) do
      delete :destroy, id: @pc_maintenance
    end

    assert_redirected_to pc_maintenances_path
  end
end
