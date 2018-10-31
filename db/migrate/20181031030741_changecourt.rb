class Changecourt < ActiveRecord::Migration[5.1]
  def change
    add_column :courts, :description, :string
    add_reference :courts, :club, foreign_key: true
    rename_column :courts, :number , :name
  end
end
