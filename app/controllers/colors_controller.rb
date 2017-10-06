class ColorsController < ApplicationController
  def index
    @colors = Color.all
    the_color = params[:the_color] || '#82c91d'
    @hex = Color.find_by(hex: the_color).hex.paint
    render 'index.html.erb'
  end
end
