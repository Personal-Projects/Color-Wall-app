class Color < ApplicationRecord
  belongs_to :user
  has_many :project_colors
  has_many :projects, through: :project_colors
end
