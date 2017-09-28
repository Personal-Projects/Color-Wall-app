class RemoveColorsFromCardsTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :cards, :color_one, :string
    remove_column :cards, :color_two, :string
    remove_column :cards, :color_three, :string
    remove_column :cards, :color_four, :string
    remove_column :cards, :color_five, :string
    remove_column :cards, :color_six, :string
  end
end
