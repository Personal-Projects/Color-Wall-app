class RemoveColorIdFromCardsTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :cards, :color_id, :integer
    remove_column :cards, :colors, :string
  end
end
