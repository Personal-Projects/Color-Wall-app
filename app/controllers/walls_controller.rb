class WallsController < ApplicationController
  def index
    @projects = Project.all
    @cards = Card.all
    @colors = current_user.colors
    render 'index.html.erb'
  end
end
