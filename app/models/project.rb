class Project < ApplicationRecord
  belongs_to :user
  has_many :project_cards
  has_many :cards, through: :project_cards
  has_many :project_colors
  has_many :colors, through: :project_colors
end

# Project.first.user WORKS
# Project.first.cards WORKS, but do I need this?
# Project.first.colors WORKS, but do I need this?

#NOTES: when user click on a color, save color 