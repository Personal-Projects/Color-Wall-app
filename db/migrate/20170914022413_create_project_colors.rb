class CreateProjectColors < ActiveRecord::Migration[5.1]
  def change
    create_table :project_colors do |t|
      t.integer :project_id
      t.integer :color_id

      t.timestamps
    end
  end
end
