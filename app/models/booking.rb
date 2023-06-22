class Booking < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  belongs_to :property

  # --------------------Validators-----------------------------------
  validates :start_date, :end_date, presence: true
end
