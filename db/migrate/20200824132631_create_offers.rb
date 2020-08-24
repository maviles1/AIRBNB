class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :description
      t.references :listing, foreign_key: true
      t.references :user, foreign_key: true
      t.string :start_date
      t.string :end_date
      t.boolean :status

      t.timestamps
    end
  end
end
