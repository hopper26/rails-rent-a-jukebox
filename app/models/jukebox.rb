class Jukebox < ApplicationRecord
  belongs_to :user

  # validates :price, :title, presence: true
end
