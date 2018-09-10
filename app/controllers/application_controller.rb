class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   helper_method :current_user

   def current_user
     if session[:user_id] != nil
       @current_user ||= User.find(session[:user_id])
     else
       false
     end
   end

   def authorize
    if !current_user
      flash[:alert] = "You aren't authorized to visit that page."
      redirect_to '/'
    end
  end
 end
