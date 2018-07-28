class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:f_name, :l_name, :member_since, :business_name, :number_employees, :location, :mobile_tel, :account_status])
  end

  def after_sign_in_path_for(resource)
    if current_user.admin?
      admin_dashboard_path
    else
      member_home_path
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end

end
