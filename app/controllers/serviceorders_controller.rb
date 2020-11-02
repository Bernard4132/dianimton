class ServiceordersController < ApplicationController
  before_action :set_serviceorder, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token,
                   :if => Proc.new { |c| c.request.format == 'application/json' }
  protect_from_forgery with: :null_session

  # GET /serviceorders
  # GET /serviceorders.json
  def index
    @serviceorders = Serviceorder.all
  end

  # GET /serviceorders/1
  # GET /serviceorders/1.json
  def show
  end

  # GET /serviceorders/new
  def new
    @serviceorder = Serviceorder.new
  end

  # GET /serviceorders/1/edit
  def edit
  end

  def approveservicepaid
    serviceorderid = params[:serviceorder_id]
    @serviceorder = Serviceorder.find(serviceorderid)
    @serviceorder.update_attributes(paid: true)
    render :status => 200,
             :json =>  @serviceorder 
  end

  def approveservicepaidg
    serviceorderid = params[:serviceorder_id]
    @serviceorder = Serviceorder.find(serviceorderid)
    @serviceorder.update_attributes(paid: true)
    render :status => 200,
             :json =>  @serviceorder 
  end

  # POST /serviceorders
  # POST /serviceorders.json
  def create
    @serviceorder = Serviceorder.new(serviceorder_params)

    respond_to do |format|
      if @serviceorder.save
        format.html { redirect_to @serviceorder, notice: 'Serviceorder was successfully created.' }
        format.json { render :show, status: :created, location: @serviceorder }
      else
        format.html { render :new }
        format.json { render json: @serviceorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serviceorders/1
  # PATCH/PUT /serviceorders/1.json
  def update
    respond_to do |format|
      if @serviceorder.update(serviceorder_params)
        format.html { redirect_to @serviceorder, notice: 'Serviceorder was successfully updated.' }
        format.json { render :show, status: :ok, location: @serviceorder }
      else
        format.html { render :edit }
        format.json { render json: @serviceorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serviceorders/1
  # DELETE /serviceorders/1.json
  def destroy
    @serviceorder.destroy
    respond_to do |format|
      format.html { redirect_to serviceorders_url, notice: 'Serviceorder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serviceorder
      @serviceorder = Serviceorder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def serviceorder_params
      params.require(:serviceorder).permit(:service_id, :user_id, :amount, :paid, :addinfo)
    end
end
