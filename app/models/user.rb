class User < ApplicationRecord
  has_secure_password
  has_many :colors
  has_many :cards
  has_many :projects
end

# User.first.projects WORKS
# User.first.cards WORKS
# User.first.colors WORKS, but all colors belong to one user...

# NOTES: when user click on color, save color to wall through User, aka find user colors from User.something
