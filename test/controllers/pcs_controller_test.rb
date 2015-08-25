require 'test_helper'

class PcsControllerTest < ActionController::TestCase
  setup do
    @pc = pcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pc" do
    assert_difference('Pc.count') do
      post :create, pc: { antivirus: @pc.antivirus, area: @pc.area, cdrom: @pc.cdrom, claveComputador: @pc.claveComputador, codigoContable: @pc.codigoContable, d312: @pc.d312, descripcion: @pc.descripcion, discoDuro: @pc.discoDuro, drivers: @pc.drivers, encargado: @pc.encargado, factura: @pc.factura, fechaCompra: @pc.fechaCompra, frecuencia: @pc.frecuencia, garantia: @pc.garantia, internet: @pc.internet, lectorMemorias: @pc.lectorMemorias, marca: @pc.marca, nombre: @pc.nombre, office: @pc.office, procesador: @pc.procesador, ram: @pc.ram, serialOffice: @pc.serialOffice, serialSo: @pc.serialSo, so: @pc.so, ultimoMantenimiento: @pc.ultimoMantenimiento, usuarioComputador: @pc.usuarioComputador, velocidad: @pc.velocidad }
    end

    assert_redirected_to pc_path(assigns(:pc))
  end

  test "should show pc" do
    get :show, id: @pc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pc
    assert_response :success
  end

  test "should update pc" do
    patch :update, id: @pc, pc: { antivirus: @pc.antivirus, area: @pc.area, cdrom: @pc.cdrom, claveComputador: @pc.claveComputador, codigoContable: @pc.codigoContable, d312: @pc.d312, descripcion: @pc.descripcion, discoDuro: @pc.discoDuro, drivers: @pc.drivers, encargado: @pc.encargado, factura: @pc.factura, fechaCompra: @pc.fechaCompra, frecuencia: @pc.frecuencia, garantia: @pc.garantia, internet: @pc.internet, lectorMemorias: @pc.lectorMemorias, marca: @pc.marca, nombre: @pc.nombre, office: @pc.office, procesador: @pc.procesador, ram: @pc.ram, serialOffice: @pc.serialOffice, serialSo: @pc.serialSo, so: @pc.so, ultimoMantenimiento: @pc.ultimoMantenimiento, usuarioComputador: @pc.usuarioComputador, velocidad: @pc.velocidad }
    assert_redirected_to pc_path(assigns(:pc))
  end

  test "should destroy pc" do
    assert_difference('Pc.count', -1) do
      delete :destroy, id: @pc
    end

    assert_redirected_to pcs_path
  end
end
