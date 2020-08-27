class Listing < ApplicationRecord
  has_many :offers
  belongs_to :user
  has_many_attached :img_urls
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


end
