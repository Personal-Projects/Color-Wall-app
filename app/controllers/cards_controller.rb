class CardsController < ApplicationController
  def create
    params[:colors].each do |key, value|
      p key
      card = Card.new(
        name: 'card',
        user_id: current_user.id
      )
      card.save
      p value
      value.each do |color|
        color_id = Color.find_by(hex: color).id
        card_color = CardColor.new(
          card_id: card.id,
          color_id: color_id
        )
        card_color.save
      end
    end
    redirect_to "/walls"
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
    redirect_to '/walls'
  end

  def destroy
    @card = Card.find_by(id: params[:id])
    @card.destroy
    flash[:danger] = "You just deleted a card!"
    redirect_to '/walls'
  end
end
