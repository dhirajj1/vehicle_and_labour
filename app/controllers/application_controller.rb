class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    if resource.interest_type == "Vehicle"
      vehicles_path
    else
      labours_path
    end
  end  
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role_id, :first_name, :last_name, :interest_type])
  end  
  
  
end  