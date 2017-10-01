class ProjectsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    project = Project.new(
      name: params[:name],
      start_date: params[:start_date],
      finish_date: params[:finish_date],
      concept: params[:concept]
    )
    if project.save
      session[:project_id] = current_user.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/pages'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup'
    end
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
    if @project.save
      flash[:success] = "Information updated"
      redirect_to "/projects/#{@project.id}"
    else
      render "edit.html.erb"
    end
  end

  def destroy
    project = Project.find_by(id: params[:id])
    project.destroy
    flash[:danger] = "You just deleted a project"
    redirect_to "/walls"
  end
end


