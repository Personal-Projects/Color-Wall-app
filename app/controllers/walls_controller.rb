class WallsController < ApplicationController
  def index
    @projects = current_user.projects
    @cards = current_user.cards
    @colors = current_user.colors
    render 'index.html.erb'
  end
end
