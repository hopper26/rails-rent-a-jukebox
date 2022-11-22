class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.boolean :accepted
      t.timestamp :start_date
      t.timestamp :end_date
      t.integer :price
      t.references :jukebox, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
