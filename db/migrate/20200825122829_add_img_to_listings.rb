class AddImgToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :img_url, :string
  end
end
