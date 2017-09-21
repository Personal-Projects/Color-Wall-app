class ColorsController < ApplicationController
  def index
    @color = Color.new
    render 'index.html.erb'
  end

  def create
    @color = Color.new(
      name: params[:name],
      hex: params[:hex]
    )
    @color.save
    render 'show.html.erb'
  end

  def show
    @color = Color.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
