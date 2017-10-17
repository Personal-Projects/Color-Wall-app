class Color < ApplicationRecord

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
