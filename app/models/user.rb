class User < ApplicationRecord
  has_many :listings
  has_many :offers
  has_many :received_offers, source: :offers , through: :listings, class_name: "Offer"
  has_many :pending_listings, source: :listing ,through: :offers, class_name: "Listing", foreign_key: :listing_id
end
