class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You're in the BOIZ CLUB"
      redirect_to articles_path
    else
      flash.now[:danger] = "Your credentials aint right, try again to prove you actually are one of the boiz"
      render 'new'
    end
  end
  
  
  def destroy
    session[:user_id] = nil
    flash[:success] = "You have logged out"
    redirect_to root_path
  end
  
end

