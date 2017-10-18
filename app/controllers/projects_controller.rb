class ProjectsController < ApplicationController
  def index
    @projects = current_user.projects
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    project = Project.new(
      name: params[:name],
      start_date: params[:start_date],
      finish_date: params[:finish_date],
      concept: params[:concept],
      user_id: current_user.id
    )
    project.save
    redirect_to '/projects'
  end

  def show
    @project = Project.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @project = Project.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @project = Project.find_by(id: params[:id])
    @project.assign_attributes(
      name: params[:name],
      start_date: params[:start_date],
      finish_date: params[:finish_date],
      concept: params[:concept]
    )
    @project.save
    redirect_to "/projects"
  end

  def destroy
    project = Project.find_by(id: params[:id])
    project.destroy
    flash[:danger] = "You just deleted a project"
    redirect_to "/projects"
  end
end


