class SessionsController < Devise::SessionsController
  before_action :set_current_user

   \# ログアウト
   def destroy
     super
     session[:keep_signed_out] = true
   end

   def set_current_user
     @current_user = User.find_by(id: session[:user_id])
   end

end
