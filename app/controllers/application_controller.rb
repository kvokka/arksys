require 'application_responder'

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  before_action :configure_permitted_parameters, if: :devise_controller?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # v.3.5 syntax. will be deprecated in 4.0
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) do |user_params|
      user_params.permit(:email, :password, :family, :name, :phone, :status)
    end

    devise_parameter_sanitizer.for(:sign_up) do |user_params|
      user_params.permit(:email, :password, :password_confirmation, :family, :name, :phone, :status)
    end
  end
  protected :configure_permitted_parameters
end
