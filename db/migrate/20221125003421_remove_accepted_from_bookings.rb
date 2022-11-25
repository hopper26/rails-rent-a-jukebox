class RemoveAcceptedFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :accepted, :boolean
  end
end
