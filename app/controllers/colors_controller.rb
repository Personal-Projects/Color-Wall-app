class ColorsController < ApplicationController
  def index
    @colors = Color.all
    @cards = Card.all
    render 'index.html.erb'
  end

  def show
    @color = Color.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
