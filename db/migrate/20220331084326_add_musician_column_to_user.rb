class AddMusicianColumnToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :musician, :boolean, default: false
  end
end
