class CreateProjectCards < ActiveRecord::Migration[5.1]
  def change
    create_table :project_cards do |t|
      t.integer :project_id
      t.integer :card_id

      t.timestamps
    end
  end
end
