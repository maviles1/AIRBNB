class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :userid
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end
