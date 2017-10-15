class AddColorHexToCardColorTable < ActiveRecord::Migration[5.1]
  def change
    add_column :card_colors, :color_hex, :string
  end
end
