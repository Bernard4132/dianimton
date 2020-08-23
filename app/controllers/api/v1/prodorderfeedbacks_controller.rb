class Api::V1::ProdorderfeedbacksController < ApplicationController
 skip_before_action :verify_authenticity_token,
                   :if => Proc.new { |c| c.request.format == 'application/json' }
  protect_from_forgery with: :null_session

  def create
  	@prodorderfeedback = Prodorderfeedback.create(productorder_id: params[:productorder_id], user_id: params[:user_id], feedbacktxt: params[:feedbacktxt])
    render :status => 200,
             :json =>  @prodorderfeedback   
  end

end