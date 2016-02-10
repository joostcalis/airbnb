class ReservationsController < ApplicationController
  def create
    if @reservation = Reservation.create(reservation_params)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :user_id, :listing_id)
  end
end
