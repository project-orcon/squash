class Addpricestoowner < ActiveRecord::Migration[5.1]
  def change
    add_reference :prices, :owner, foreign_key:true
  end
end
