class Property < ApplicationRecord
  has_many :bookings
  belongs_to :user
end

# array = []
# @property.booking.each do |booking|
#   array << {
#     from: booking.start_date,
#     to: booking.end_date
#   }
# end
