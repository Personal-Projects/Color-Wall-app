class AddMoreColorsToCardsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :color_five, :string
    add_column :cards, :color_six, :string
  end
end
