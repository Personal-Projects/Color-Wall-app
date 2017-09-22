class Color < ApplicationRecord
  belongs_to :user
  has_many :project_colors
  has_many :projects, through: :project_colors

  def complement
    hsl = self.hsl
    hsl.h = (hsl.h + 180) % 360
    self.class.new(hsl, @format)
  end

  def eql?(other)
    self.class == other.class && self == other
  end

  def paint
    self
  end

  def palette
    Harmonies.new(self)
  end
end
