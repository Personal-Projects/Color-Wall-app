class AddColorsInputToCardsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :color1, :string
    add_column :cards, :color2, :string
    add_column :cards, :color3, :string
    add_column :cards, :color4, :string
    add_column :cards, :color5, :string
    add_column :cards, :color6, :string
  end
end
