class WallsController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    redirect_to '/'
  end

  def show
    render 'show.html.erb'
  end

  def edit
    render 'edit.html.erb'
  end

  def update
    redirect_to '/'
  end

  def destroy
    redirect_to '/'
  end
end
