class RegistrationsController < Devise::RegistrationsController
	before_action :authenticate_user!
	
  protected

  def after_inactive_sign_up_path_for(resource)
    user_session_path
  end
end