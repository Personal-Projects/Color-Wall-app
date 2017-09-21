class UsersController < ApplicationController
  # def index

  # end

  def new
    render 'new.html.erb'
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      user_name: params[:user_name],
      birth_date: params[:birth_date],
      favorite_color: params[:favorite_color],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/pages'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup'
    end
  end

  def show
    @user = current_user
    render 'show.html.erb'
  end

  def edit
    @user = User.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.assign_attributes(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      user_name: params[:user_name],
      birth_date: params[:birth_date],
      favorite_color: params[:favorite_color],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if @user.save
      flash[:success] = "Information updated"
      redirect_to "/users/#{@user.id}"
    else
      render "edit.html.erb"
    end
  end

  def destroy
    redirect_to '/'
  end
end
