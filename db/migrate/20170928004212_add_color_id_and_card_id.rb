class AddColorIdAndCardId < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :color_id, :integer
    # add_column :colors, :card_id, :integer
  end
end
