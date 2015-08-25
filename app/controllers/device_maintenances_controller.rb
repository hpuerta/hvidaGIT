class DeviceMaintenancesController < ApplicationController
  before_action :set_device_maintenance, only: [:show, :edit, :update, :destroy]

  # GET /device_maintenances
  # GET /device_maintenances.json
  def index
    @device_maintenances = DeviceMaintenance.all
  end

  # GET /device_maintenances/1
  # GET /device_maintenances/1.json
  def show
  end

  # GET /device_maintenances/new
  def new
    @device_maintenance = DeviceMaintenance.new
  end

  # GET /device_maintenances/1/edit
  def edit
  end

  # POST /device_maintenances
  # POST /device_maintenances.json
  def create
    @device_maintenance = DeviceMaintenance.new(device_maintenance_params)

    respond_to do |format|
      if @device_maintenance.save
        format.html { redirect_to @device_maintenance, notice: 'Device maintenance was successfully created.' }
        format.json { render :show, status: :created, location: @device_maintenance }
      else
        format.html { render :new }
        format.json { render json: @device_maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_maintenances/1
  # PATCH/PUT /device_maintenances/1.json
  def update
    respond_to do |format|
      if @device_maintenance.update(device_maintenance_params)
        format.html { redirect_to @device_maintenance, notice: 'Device maintenance was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_maintenance }
      else
        format.html { render :edit }
        format.json { render json: @device_maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_maintenances/1
  # DELETE /device_maintenances/1.json
  def destroy
    @device_maintenance.destroy
    respond_to do |format|
      format.html { redirect_to device_maintenances_url, notice: 'Device maintenance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_maintenance
      @device_maintenance = DeviceMaintenance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_maintenance_params
      params.require(:device_maintenance).permit(:fechaMantenmiento, :correctivo, :prioridad, :leido, :completado, :realizadoPor, :descripcion)
    end
end
