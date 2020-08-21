class Api::V1::ShopsController < ApplicationController
 skip_before_action :verify_authenticity_token,
                   :if => Proc.new { |c| c.request.format == 'application/json' }
  protect_from_forgery with: :null_session

  def create
  	@shop = Shop.create(name: params[:name], description: params[:description], user_id: params[:user_id], shoptype: params[:shoptype])
    render :status => 200,
             :json =>  @shop   
  end

end