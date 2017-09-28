class CardColor < ApplicationRecord
  belongs_to :color
  belongs_to :card
end
