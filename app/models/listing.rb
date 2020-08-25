class Listing < ApplicationRecord
  has_many :offers
  belongs_to :user
  has_one_attached :img_url
end
