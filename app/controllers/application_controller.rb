class ApplicationController < ActionController::Base
  before_action :authenticate_user!


  def after_sign_in_path_for(resource)
    boards_path
  end

  def after_sign_out_path_for(resource)
    user_session_path
  end


  # ↓これを追加↓
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
  # ↑ここまで↑

end
