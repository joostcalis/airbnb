class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end
  def new
    @listing = Listing.new
  end
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

  private

  def listing_params
    params.require(:listing).permit(:title, :price, :location, :description)
  end
end
