class Changebookings < ActiveRecord::Migration[5.1]
  def change
    remove_reference :bookings, :user , foreign_key: true
    add_reference :bookings, :client, foreign_key:true
    add_reference :bookings, :availability, foreign_key:true
    add_reference :bookings, :club, foreign_key:true    
  end
end
