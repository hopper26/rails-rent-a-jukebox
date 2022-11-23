class Booking < ApplicationRecord
  belongs_to :jukebox
  belongs_to :user

  validates :start_time, :end_time, presence: true
end
