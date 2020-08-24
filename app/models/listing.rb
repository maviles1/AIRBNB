class Listing < ApplicationRecord
  has_many :offers
  belongs_to :user
end
