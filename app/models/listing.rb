class Listing < ApplicationRecord
  has_many :offers
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many_attached :img_url
end
