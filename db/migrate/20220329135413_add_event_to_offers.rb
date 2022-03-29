class AddEventToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :event, :string
    add_column :offers, :music_style, :string
  end
end
