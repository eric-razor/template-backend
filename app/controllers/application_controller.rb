class ApplicationController < ActionController::API
before_action :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_in, keys: [:username,:password])
 end

 def current_activist
   User.find_by(id: session[:user_id])
 end

 def logged_in?
   !!current_user
 end
end
