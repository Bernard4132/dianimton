class ProductordersController < ApplicationController
  before_action :set_productorder, only: [:show, :edit, :update, :destroy]

  # GET /productorders
  # GET /productorders.json
  def index
    @productorders = Productorder.all
  end

  # GET /productorders/1
  # GET /productorders/1.json
  def show
  end

  # GET /productorders/new
  def new
    @productorder = Productorder.new
  end

  # GET /productorders/1/edit
  def edit
  end

  # POST /productorders
  # POST /productorders.json
  def create
    @productorder = Productorder.new(productorder_params)

    respond_to do |format|
      if @productorder.save
        format.html { redirect_to @productorder, notice: 'Productorder was successfully created.' }
        format.json { render :show, status: :created, location: @productorder }
      else
        format.html { render :new }
        format.json { render json: @productorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productorders/1
  # PATCH/PUT /productorders/1.json
  def update
    respond_to do |format|
      if @productorder.update(productorder_params)
        format.html { redirect_to @productorder, notice: 'Productorder was successfully updated.' }
        format.json { render :show, status: :ok, location: @productorder }
      else
        format.html { render :edit }
        format.json { render json: @productorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productorders/1
  # DELETE /productorders/1.json
  def destroy
    @productorder.destroy
    respond_to do |format|
      format.html { redirect_to productorders_url, notice: 'Productorder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productorder
      @productorder = Productorder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def productorder_params
      params.require(:productorder).permit(:product_id, :user_id, :amount, :paid, :addinfo)
    end
end
