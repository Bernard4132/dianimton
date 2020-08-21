class Api::V1::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }
  skip_before_action :verify_signed_out_user
  protect_from_forgery with: :null_session

  respond_to :json
 
  def create
    warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#failure")
    current_user.reset_authentication_token!
    render :status => 200,
           :json =>  { 
                       :authentication_token => current_user.authentication_token,
                       :email => current_user.email,
                       :id => current_user.id,
                       :fullname => current_user.fullname
                      } 
  end
 
  def destroy
    warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#failure")
    current_user.update_column(:authentication_token, nil)
    render :status => 200,
           :json => { :success => true,
                      :info => "Logged out",
                      :data => {} }
  end
 
  def failure
    render :status => 401,
           :json => { :success => false,
                      :info => "Login Failed",
                      :data => {} }
  end
end