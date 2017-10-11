class ChangeConceptStringToText < ActiveRecord::Migration[5.1]
  def change
    change_column :projects, :concept, :text
  end
end
