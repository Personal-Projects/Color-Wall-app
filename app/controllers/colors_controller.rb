class ColorsController < ApplicationController
  def index
    @colors = Color.all
    the_color = params[:the_color] || '#000000'
    @hex = Color.find_by(hex: the_color[1..6]).hex.paint
    render 'index.html.erb'
  end

  def show
    @color = Color.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
