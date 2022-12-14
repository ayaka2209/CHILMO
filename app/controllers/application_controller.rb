class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if @user.role?
      homes_path
    else
      attendance_books_path
    end
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :admin, :role])
    # devise_parameter_sanitizer.permit(:log_in, keys: [:admin, :role])
  end
end
