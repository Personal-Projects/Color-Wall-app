class ColorsController < ApplicationController
  def index
    @hex = (params[:the_color] || '#f7ef25').paint
    render 'index.html.erb'
  end
end
