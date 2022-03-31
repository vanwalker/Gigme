class AddAvailabilityEndToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :availability_end, :date
    rename_column :offers, :availability, :availability_start
  end
end
