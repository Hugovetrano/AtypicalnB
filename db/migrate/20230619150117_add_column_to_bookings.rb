class AddColumnToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :number_of_guest, :integer
  end
end
