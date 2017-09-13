class SessionsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    redirect_to '/'
  end

  def destroy
    redirect_to '/'
  end
end
