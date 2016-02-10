class GuestsController < ApplicationController
  def create
    if @guest = Guest.create(user_params)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def _params
    params.require(:movie).permit(
      :title, :plot, :picture, :release_date, :duration,
      director_attributes: [
        :first_name, :last_name, :country
      ],
      roles_attributes: [
        :id, :name, :actor_id, :_destroy
      ]
    )
  end

end
