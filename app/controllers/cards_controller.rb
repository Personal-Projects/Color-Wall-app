class CardsController < ApplicationController
  def index
    @cards = current_user.cards
    render 'index.html.erb'
  end

  def create
    params[:colors].each do |key, value|
      card = Card.new(
        name: params[:card_name],
        user_id: current_user.id,
        color1: value[0],
        color2: value[1],
        color3: value[2],
        color4: value[3],
        color5: value[4],
        color6: value[5]
      )
      card.save
    end
    redirect_to "/cards"
  end

  def edit
    @card = Card.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @card = Card.find_by(id: params[:id])
    @card.assign_attributes(
      name: params[:name]
    )
    @card.save
    redirect_to '/cards'
  end

  def destroy
    @card = Card.find_by(id: params[:id])
    @card.destroy
    flash[:danger] = "You just deleted a card!"
    redirect_to '/pages'
  end
end
