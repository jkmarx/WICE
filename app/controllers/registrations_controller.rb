
class RegistrationsController < Devise::RegistrationsController

   def after_sign_out_path_for(resource_or_scope)
    welcome_index_path
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, { allergy_ids:[] })
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, { allergy_ids:[] })
  end
end
