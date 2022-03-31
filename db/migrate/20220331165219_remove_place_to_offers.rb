class RemovePlaceToOffers < ActiveRecord::Migration[6.1]
  def change
    remove_column :offers, :event
    remove_column :offers, :place
    remove_column :bookings, :price
  end
end
