class Property < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  belongs_to :user

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
