class ListingsController < ApplicationController
  before_action :load_user

  def index
    @listings = @user.listings
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = @user
    if @listing.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    	@listing = Listing.find(params[:id])
      @reservation = Reservation.new
      @reservation.listing_id = @listing.id
      @user = @listing.user
  	end

  def destroy
    @listing = Listing.find(params[:id])
    if @listing.destroy
      redirect_to root_path
    else
      redirect_to @listing
    end
  end

  private

  def load_user
    @user = User.find(params[:user_id])
  end

  def listing_params
    params.require(:listing).permit(:title, :price, :location, :description, :start_available, :end_available)
  end
end
