class ColorsController < ApplicationController
  def index
    @colors = Color.all
    @hex = ('#' + Color.find_by(id: 9000000).hex)
    render 'index.html.erb'
  end

  def show
    @color = Color.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
