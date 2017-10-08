class ColorsController < ApplicationController
  def index
    @projects = current_user.projects
    @project = Project.find_by(id: params[:id])
    @colors = Color.all
    the_color = params[:the_color] || '#c99ea7'
    @hex = Color.find_by(hex: the_color).hex.paint
    render 'index.html.erb'
  end
end
