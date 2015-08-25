class PcMaintenancesController < ApplicationController
  before_action :set_pc_maintenance, only: [:show, :edit, :update, :destroy]

  # GET /pc_maintenances
  # GET /pc_maintenances.json
  def index
    @pc_maintenances = PcMaintenance.all
  end

  # GET /pc_maintenances/1
  # GET /pc_maintenances/1.json
  def show
  end

  # GET /pc_maintenances/new
  def new
    @pc_maintenance = PcMaintenance.new
  end

  # GET /pc_maintenances/1/edit
  def edit
  end

  # POST /pc_maintenances
  # POST /pc_maintenances.json
  def create
    @pc_maintenance = PcMaintenance.new(pc_maintenance_params)

    respond_to do |format|
      if @pc_maintenance.save
        format.html { redirect_to @pc_maintenance, notice: 'Pc maintenance was successfully created.' }
        format.json { render :show, status: :created, location: @pc_maintenance }
      else
        format.html { render :new }
        format.json { render json: @pc_maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pc_maintenances/1
  # PATCH/PUT /pc_maintenances/1.json
  def update
    respond_to do |format|
      if @pc_maintenance.update(pc_maintenance_params)
        format.html { redirect_to @pc_maintenance, notice: 'Pc maintenance was successfully updated.' }
        format.json { render :show, status: :ok, location: @pc_maintenance }
      else
        format.html { render :edit }
        format.json { render json: @pc_maintenance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pc_maintenances/1
  # DELETE /pc_maintenances/1.json
  def destroy
    @pc_maintenance.destroy
    respond_to do |format|
      format.html { redirect_to pc_maintenances_url, notice: 'Pc maintenance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pc_maintenance
      @pc_maintenance = PcMaintenance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pc_maintenance_params
      params.require(:pc_maintenance).permit(:fechaMantenmiento, :correctivo, :prioridad, :leido, :completado, :realizadoPor, :descripcion)
    end
end
