class Booking < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  belongs_to :property
end
