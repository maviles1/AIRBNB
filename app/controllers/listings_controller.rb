class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def show
    @listings = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new()
  end

  def create
    @listing = Listing.new(strong_params)
    @listing.user = current_user
    if @listing.save
      redirect_to :root
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
    redirect_to :root
  end

  private

  def strong_params
    params.require(:listing).permit(:description, :title, :img_url)
  end
end
