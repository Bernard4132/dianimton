class GenservicesController < ApplicationController
  before_action :set_genservice, only: [:show, :edit, :update, :destroy]

  # GET /genservices
  # GET /genservices.json
  def index
    @genservices = Genservice.all
  end

  # GET /genservices/1
  # GET /genservices/1.json
  def show
  end

  def creategserv
    @genservice = Genservice.create(name: params[:name], email: params[:email], phonenumber: params[:phonenumber], businessdets: params[:businessdets], servicetype: params[:servicetype])
    render :status => 200,
             :json =>  @genservice   
  end

  # GET /genservices/new
  def new
    @genservice = Genservice.new
  end

  # GET /genservices/1/edit
  def edit
  end

  # POST /genservices
  # POST /genservices.json
  def create
    @genservice = Genservice.new(genservice_params)

    respond_to do |format|
      if @genservice.save
        format.html { redirect_to @genservice, notice: 'Genservice was successfully created.' }
        format.json { render :show, status: :created, location: @genservice }
      else
        format.html { render :new }
        format.json { render json: @genservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genservices/1
  # PATCH/PUT /genservices/1.json
  def update
    respond_to do |format|
      if @genservice.update(genservice_params)
        format.html { redirect_to @genservice, notice: 'Genservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @genservice }
      else
        format.html { render :edit }
        format.json { render json: @genservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genservices/1
  # DELETE /genservices/1.json
  def destroy
    @genservice.destroy
    respond_to do |format|
      format.html { redirect_to genservices_url, notice: 'Genservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genservice
      @genservice = Genservice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def genservice_params
      params.require(:genservice).permit(:name, :email, :phonenumber, :businessdets, :servicetype)
    end
end
