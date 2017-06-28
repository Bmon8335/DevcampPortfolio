module DeviseWhitelist
  extend ActiveSupport::Concern
  
  inlcuded do 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end