class OutlooksController < ApplicationController
  before_action :set_outlook, only: [:show, :edit, :update, :destroy]

  # GET /outlooks
  # GET /outlooks.json
  def index
    @outlooks = Outlook.all
  end

  # GET /outlooks/1
  # GET /outlooks/1.json
  def show
  end

  # GET /outlooks/new
  def new
    @outlook = Outlook.new
  end

  # GET /outlooks/1/edit
  def edit
  end

  # POST /outlooks
  # POST /outlooks.json
  def create
    @outlook = Outlook.new(outlook_params)

    respond_to do |format|
      if @outlook.save
        format.html { redirect_to @outlook, notice: 'Outlook was successfully created.' }
        format.json { render :show, status: :created, location: @outlook }
      else
        format.html { render :new }
        format.json { render json: @outlook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outlooks/1
  # PATCH/PUT /outlooks/1.json
  def update
    respond_to do |format|
      if @outlook.update(outlook_params)
        format.html { redirect_to @outlook, notice: 'Outlook was successfully updated.' }
        format.json { render :show, status: :ok, location: @outlook }
      else
        format.html { render :edit }
        format.json { render json: @outlook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outlooks/1
  # DELETE /outlooks/1.json
  def destroy
    @outlook.destroy
    respond_to do |format|
      format.html { redirect_to outlooks_url, notice: 'Outlook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outlook
      @outlook = Outlook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outlook_params
      params.require(:outlook).permit(:correo, :clave, :nombre)
    end
end
