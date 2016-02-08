class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  # Create a Post from the form params
  def create
    if @listing = Listing.create(listing_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:title, :price, :description, :location)
  end
end
