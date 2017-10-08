class ProjectColorsController < ApplicationController
  def create
    params[:colors].each do |key, value|
      value.each do |color|
        color_id = Color.find_by(hex: color).id
        project_color = ProjectColor.new(
          project_id: params[:projects],
          color_id: color_id
        )
        project_color.save
      end
    end
    redirect_to '/projects'
  end
end
