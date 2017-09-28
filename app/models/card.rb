class Card < ApplicationRecord
  belongs_to :user
  has_many :project_cards
  has_many :projects, through: :project_cards
  has_many :card_colors
  has_many :colors, through: :card_colors
end
