class MatchesController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    redirect_to '/'
  end
end
