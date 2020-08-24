class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :description
      t.integer :listingid
      t.integer :userid
      t.string :startdate
      t.string :enddate
      t.boolean :status

      t.timestamps
    end
  end
end
