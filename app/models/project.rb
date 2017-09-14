class Project < ApplicationRecord
  belongs_to :user
  has_many :project_cards
  has_many :cards, through: :project_cards
  has_many :project_colors
  has_many :colors, through: :project_colors
end
