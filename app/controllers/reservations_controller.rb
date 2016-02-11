class ReservationsController < ApplicationController
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

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :user_id, :listing_id)
  end
end
