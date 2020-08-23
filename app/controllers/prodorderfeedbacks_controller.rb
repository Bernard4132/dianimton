class ProdorderfeedbacksController < ApplicationController
  before_action :set_prodorderfeedback, only: [:show, :edit, :update, :destroy]

  # GET /prodorderfeedbacks
  # GET /prodorderfeedbacks.json
  def index
    @prodorderfeedbacks = Prodorderfeedback.all
  end

  # GET /prodorderfeedbacks/1
  # GET /prodorderfeedbacks/1.json
  def show
  end

  # GET /prodorderfeedbacks/new
  def new
    @prodorderfeedback = Prodorderfeedback.new
  end

  # GET /prodorderfeedbacks/1/edit
  def edit
  end

  # POST /prodorderfeedbacks
  # POST /prodorderfeedbacks.json
  def create
    @prodorderfeedback = Prodorderfeedback.new(prodorderfeedback_params)

    respond_to do |format|
      if @prodorderfeedback.save
        format.html { redirect_to @prodorderfeedback, notice: 'Prodorderfeedback was successfully created.' }
        format.json { render :show, status: :created, location: @prodorderfeedback }
      else
        format.html { render :new }
        format.json { render json: @prodorderfeedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodorderfeedbacks/1
  # PATCH/PUT /prodorderfeedbacks/1.json
  def update
    respond_to do |format|
      if @prodorderfeedback.update(prodorderfeedback_params)
        format.html { redirect_to @prodorderfeedback, notice: 'Prodorderfeedback was successfully updated.' }
        format.json { render :show, status: :ok, location: @prodorderfeedback }
      else
        format.html { render :edit }
        format.json { render json: @prodorderfeedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodorderfeedbacks/1
  # DELETE /prodorderfeedbacks/1.json
  def destroy
    @prodorderfeedback.destroy
    respond_to do |format|
      format.html { redirect_to prodorderfeedbacks_url, notice: 'Prodorderfeedback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodorderfeedback
      @prodorderfeedback = Prodorderfeedback.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prodorderfeedback_params
      params.require(:prodorderfeedback).permit(:productorder_id, :user_id, :feedbacktxt)
    end
end
