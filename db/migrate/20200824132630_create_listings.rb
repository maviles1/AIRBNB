class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.references :user, foreign_key: true
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end
