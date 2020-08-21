class Api::V1::RegistrationsController < Devise::RegistrationsController
  skip_before_action :verify_authenticity_token,
                   :if => Proc.new { |c| c.request.format == 'application/json' }
protect_from_forgery with: :null_session
before_filter :configure_permitted_parameters
 
  respond_to :json
 
  def create
    build_resource(sign_up_params)
    if resource.save
      sign_in resource
      render :status => 200,
             :json =>  { 
                       :authentication_token => current_user.authentication_token,
                       :email => current_user.email
                      }  
    end
  end

   def failure
    render :status => 401,
           :json => { :success => false,
                      :info => "Login Failed",
                      :data => {} }
  end

  def edit
  end

  

  

  
  


  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email,:fullname) }
  devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :fullname) }

end

private
 
  # def sign_up_params
  #   params.require(:user).permit(:email, :lastname, :paid)
  # end

  def sign_up_params
    params.permit(:email, :fullname, :password, :password_confirmation)
  end

  def account_update_params
    params.permit(:email, :fullname)
  end

  
  # protected

  # def update_resource(resource, params)
  #   resource.update_without_password(params)
  # end

end

