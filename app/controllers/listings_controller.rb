class ListingsController < ApplicationController
  def index
    # @listings = Listing.geocoded
    # @markers = @listings.map do |listing|
    #   {
    #     lat: listing.latitude,
    #     lng: listing.longitude
    #   }
    # end
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
    @markers = {
      lat: @listing.latitude,
      lng: @listing.longitude
    }
  end

  def new
    redirect_to new_user_session_path if current_user == nil
    @listing = Listing.new()
  end

  def create
    @listing = Listing.new(strong_params)
    @listing.user = current_user
        raise
    if @listing.save
      redirect_to listings_path
    else
      render :new
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(strong_params)
    redirect_to :roots
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to listings_path
  end

  def show_offers
    @listing = Listing.find(params[:id])
    @offers = @listing.offers
  end

  private

  def strong_params
    params.require(:listing).permit(:description, :title, :address, :price, img_urls: [])
  end
end
