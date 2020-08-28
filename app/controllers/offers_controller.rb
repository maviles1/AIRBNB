class OffersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @offers = Offer.all
  end

  def show
    @offers = Offer.find(params)
  end

  def new
    @listing = Listing.find(params[:id])
    @offer = Offer.new()
  end

  def create
    @offer = Offer.new(strong_params)
    @offer.listing_id = params[:id]
    @offer.user = current_user
    @offer.save!
    redirect_to :root
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(strong_params)
    redirect_to :roots
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to :root
  end

  def accept
    @offer = Offer.find(params[:offer_id])
    @offer.status = true
    redirect_to listing_offers_path(params[:id])
  end

  def decline
    @offer = Offer.find(params[:offer_id])
    @offer.status = false
    redirect_to listing_offers_path(params[:id])
  end

  private

  def strong_params
    params.require(:offer).permit(:description, :start_date, :end_date)
  end
end
