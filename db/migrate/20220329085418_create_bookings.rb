class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true
      t.date :booking_start
      t.date :booking_end
      t.string :place
      t.float :price
      t.text :comment

      t.timestamps
    end
  end
end
