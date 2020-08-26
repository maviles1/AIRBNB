class Listing < ApplicationRecord
  has_many :offers
  belongs_to :user
  has_many_attached :img_url
end
