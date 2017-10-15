class SessionsController < ApplicationController
  def create
    user = User.find_by(user_name: params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "You're in Color Wall!"
      redirect_to '/pages'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/pages'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Come back soon!'
    redirect_to '/pages'
  end
end
