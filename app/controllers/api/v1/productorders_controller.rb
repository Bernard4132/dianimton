class Api::V1::ProductordersController < ApplicationController
 skip_before_action :verify_authenticity_token,
                   :if => Proc.new { |c| c.request.format == 'application/json' }
  protect_from_forgery with: :null_session

  def create
  	@productorder = Productorder.create(product_id: params[:product_id], user_id: params[:user_id], amount: params[:amount], paid: params[:paid], addinfo: params[:addinfo])
    render :status => 200,
             :json =>  @productorder   
  end

end