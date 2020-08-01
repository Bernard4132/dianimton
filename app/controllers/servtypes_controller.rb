class ServtypesController < ApplicationController
  before_action :set_servtype, only: [:show, :edit, :update, :destroy]

  # GET /servtypes
  # GET /servtypes.json
  def index
    @servtypes = Servtype.all
  end

  # GET /servtypes/1
  # GET /servtypes/1.json
  def show
  end

  # GET /servtypes/new
  def new
    @servtype = Servtype.new
  end

  # GET /servtypes/1/edit
  def edit
  end

  # POST /servtypes
  # POST /servtypes.json
  def create
    @servtype = Servtype.new(servtype_params)

    respond_to do |format|
      if @servtype.save
        format.html { redirect_to @servtype, notice: 'Servtype was successfully created.' }
        format.json { render :show, status: :created, location: @servtype }
      else
        format.html { render :new }
        format.json { render json: @servtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servtypes/1
  # PATCH/PUT /servtypes/1.json
  def update
    respond_to do |format|
      if @servtype.update(servtype_params)
        format.html { redirect_to @servtype, notice: 'Servtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @servtype }
      else
        format.html { render :edit }
        format.json { render json: @servtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servtypes/1
  # DELETE /servtypes/1.json
  def destroy
    @servtype.destroy
    respond_to do |format|
      format.html { redirect_to servtypes_url, notice: 'Servtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servtype
      @servtype = Servtype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def servtype_params
      params.require(:servtype).permit(:name, :description, :servtypeicn)
    end
end
