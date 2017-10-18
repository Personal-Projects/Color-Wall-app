class DropProjectColorsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :project_colors
  end
end
