class PagesController < ApplicationController
  def home
    @listings = Listing.all.sample(3)
  end
end
