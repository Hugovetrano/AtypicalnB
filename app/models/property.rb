class Property < ApplicationRecord
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  belongs_to :user

  # --------------------Validators-----------------------------------
  validates :name, :overview, :address, :city, :zipcode, :price_per_night, :guest_capacity, presence: true
  validates :price_per_night, :guest_capacity, numericality: { only_integer: true }
  validates :price_per_night, :guest_capacity, numericality: { greater_than: 0 }
  validates :overview, length: { minimum: 10 }

  # --------------------Geocoder-----------------------------------
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_address?
end

# array = []
# @property.booking.each do |booking|
#   array << {
#     from: booking.start_date,
#     to: booking.end_date
#   }
# end
