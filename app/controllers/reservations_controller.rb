class ReservationsController < ApplicationController
before_action :require_login
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    @reservation.listing = Listing.find(session[:last_listing_id])

    if @reservation.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def require_login
    if user_signed_in?
      return true
    else
      return false
    end
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
