class SessionsController < ApplicationController
  

  def new
  end
  
  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:success] = "Welcome back #{@user.name}!"
      redirect_to root_path
    else
      flash[:danger] = 'Incorrect email or password. Please try again.' 
      redirect_to new_session_path
    end
  end
  
  def destroy
    session[:user_id] = nil
    session[:order_id] = nil
    redirect_to root_path
  end
end
