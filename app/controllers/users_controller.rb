class UsersController < ApplicationController

def index
	@users = User.all
end

def oneuser
	userid = params[:user_id]
	@user = User.find(userid)
	render :status => 200,
             :json =>  @user, include: :shops
end

end