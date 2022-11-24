class Item < ApplicationRecord
  has_many :booking, dependent: :destroy
  belongs_to :user
end
