class Booking < ApplicationRecord
  belongs_to :jukebox
  belongs_to :user
end
