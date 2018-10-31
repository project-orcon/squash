class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :suburb
      t.string :postcode
      t.string :state
      t.string :country
      t.references :club, foreign_key: true

      t.timestamps
    end
  end
end
