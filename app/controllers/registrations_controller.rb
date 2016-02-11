class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :city)
  end

  def account_update_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :current_password, :city)
  end
end
