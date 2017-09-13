class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :start_date
      t.string :finish_date
      t.string :concept

      t.timestamps
    end
  end
end
