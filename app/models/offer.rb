class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :listing, counter_cache: true
end
