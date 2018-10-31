class CreateAvailabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :availabilities do |t|
      t.datetime :start
      t.datetime :end
      t.references :court, foreign_key: true
      t.references :price, foreign_key: true

      t.timestamps
    end
  end
end
