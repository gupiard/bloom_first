class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :first_name
    devise_parameter_sanitizer.for(:sign_up) << :last_name
    devise_parameter_sanitizer.for(:sign_up) << :dob
    devise_parameter_sanitizer.for(:sign_up) << :phone
    devise_parameter_sanitizer.for(:sign_up) << :appartment
    devise_parameter_sanitizer.for(:sign_up) << :residence
    devise_parameter_sanitizer.for(:sign_up) << :street
    devise_parameter_sanitizer.for(:sign_up) << :county
    devise_parameter_sanitizer.for(:sign_up) << :post_code
    devise_parameter_sanitizer.for(:sign_up) << :city
    devise_parameter_sanitizer.for(:sign_up) << :employment_status
    devise_parameter_sanitizer.for(:sign_up) << :annual_income
    devise_parameter_sanitizer.for(:sign_up) << :net_worth
    devise_parameter_sanitizer.for(:sign_up) << :terms_of_service

    devise_parameter_sanitizer.for(:account_update) << :county
  end

  def after_sign_in_path_for(resource)
    if current_user.admin?
      '/target_portfolios'
    else
      '/objectives'
    end
  end

  def authenticate_admin_user!
    authenticate_user!
    unless current_user.admin?
      flash[:alert] = "This area is restricted to administrators only."
      redirect_to root_path
    end
  end

end
