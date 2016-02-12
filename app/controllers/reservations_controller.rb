class ReservationsController < ApplicationController
before_action :require_login
  def create
    @reservation = Reservation.new(listing_params)
    @reservation.user_id = current_user.id
    if @reservation.save
      redirect_to root_path
    else
      render :new
    end
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
    params.require(:reservation).permit(:start_date, :end_date, :user_id, :listing_id)
  end
end
