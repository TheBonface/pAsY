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
	flash[:success] = "Welcome to the Sample App !"
	#handles a successful save
	redirect_to @user
else
	render 'new'
	
end
end

private
	def user_params
	params.require(:user).permit(:name ,:email , :password , :password_confirmation)
	
end
end
