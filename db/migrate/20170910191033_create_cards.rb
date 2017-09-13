class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :color_one
      t.string :color_two
      t.string :color_three
      t.string :color_four
      t.string :user_id

      t.timestamps
    end
  end
end
