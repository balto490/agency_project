class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :gender, :city, :email, :password, :password_confirmation])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :gender, :city, :email, :password, :password_confirmation])
  end

end


# def configure_permitted_parameters
#       devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :dob, :gender, :city, :email, :password, :password_confirmation :remember_me, :avatar])
#       devise_parameter_sanitizer.permit(:account_update, keys: [:username, :dob, :gender, :city, :email, :password, :password_confirmation :remember_me, :avatar])
# end