class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :musician])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:musician])
    devise_parameter_sanitizer.permit(:account_update, keys: [:musician])
  end

  def after_sign_in_path_for(resource)
    user_path(current_user) # your path
  end
end
