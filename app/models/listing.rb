class Listing < ApplicationRecord
  has_many :offers
  belongs_to :user
  has_many_attached :img_urls
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  scope :available_for, -> (start_date, end_date) { joins(:offers).where("offers.start_date: >= ? OR end_date: <= ?", start_date, end_date)}
end
