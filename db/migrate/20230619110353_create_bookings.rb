class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true
      t.boolean :accepted
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
