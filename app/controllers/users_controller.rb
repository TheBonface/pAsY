class UsersController < ApplicationController
   def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new

  end

  def create
    @user = User.new(user_params) #not the final implimentation 
    if @user.save 	
      log_in @user

      flash[:success] = "Welcome to the Sample App!" 
      #handles a successful save
	redirect_to @user
else
  render 'new'
end
end

def edit
  @user =User.find(params[:id])
end 

def update
  @user = User.find(params[:id])
  if @user.update_attributes(user_params)
    flash[:success]= "Profile Updated"
    redirect_to @user 
    #handle a successful update 
  else
    render 'edit' 
  end 
end 
private
	def user_params
	params.require(:user).permit(:name ,:email , :password , :password_confirmation)
	
end
end 

