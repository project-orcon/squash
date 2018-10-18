class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.datetime :start
      t.datetime :end
      t.references :court
      t.references :user
      t.timestamps
    end
  end
end
