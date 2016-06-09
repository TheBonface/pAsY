class UsersController < ApplicationController
  def new
  end
  def show
	@user = User.find(params[:id])
end

def new
	@user = User.new
	
end

def create
	@user= User.new(user_params) #not the final implimentation 
if @user.save 	
	#handles a successful save
else
	render 'new'
	
end
end

private
	def user_params
	params.require(:user).permit(:name ,:emil , :password , :password_confirmation)
	
end
end
