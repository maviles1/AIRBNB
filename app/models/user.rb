class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :listings
  has_many :offers
  has_many :received_offers, source: :offers , through: :listings, class_name: "Offer"
  has_many :pending_listings, source: :listing ,through: :offers, class_name: "Listing", foreign_key: :listing_id
  has_one_attached :img_url

end
