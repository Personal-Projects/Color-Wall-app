class User < ApplicationRecord
  has_many :colors
  has_many :cards
  has_many :projects
end
