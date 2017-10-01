class RemoveCardIdFromColorsTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :colors, :card_id, :integer
  end
end
