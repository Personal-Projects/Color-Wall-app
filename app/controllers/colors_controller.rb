class ColorsController < ApplicationController
  def index
    @colors = Color.all
    the_color = params[:the_color] || '#c99ea7'
    @hex = Color.find_by(hex: the_color).hex.paint
    render 'index.html.erb'
  end
end
