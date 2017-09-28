class CardsController < ApplicationController
  def create
    card = Card.new(
      name: 'default name',
      user_id: current_user.id
    )
    card.save
    p '*' * 50
    if Color.find_by(hex: params[:colors][3][1..6]).id
      p Color.find_by(hex: params[:colors][3][1..6]).id
    elsif card_color3
      p card_color3 = Color.find_by(hex: params[:colors][2][1..6]).id
    elsif card_color2
      p card_color2 = Color.find_by(hex: params[:colors][1][1..6]).id
    elsif card_color1
      p card_color1 = Color.find_by(hex: params[:colors][0][1..6]).id
    end
    p '*' * 50
    card_color1 = CardColor.new(
      card_id: card.id,
      color_id: card_color1
    )
    card_color1.save
    p card_color1.errors.full_messages

    card_color2 = CardColor.new(
      card_id: card.id,
      color_id: card_color2
    )
    card_color2.save
    p card_color2.errors.full_messages

    if card_color3 == true
      card_color3 = CardColor.new(
        card_id: card.id,
        color_id: card_color3
      )
      card_color3.save
      p card_color3.errors.full_messages
    end

    if card_color4 == true
      card_color4 = CardColor.new(
        card_id: card.id,
        color_id: card_color4
      )
      card_color4.save
      p card_color4.errors.full_messages
    end

    render 'walls/index.html.erb'
  end
end
