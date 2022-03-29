class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.date :availability
      t.float :price
      t.string :place
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
