class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action  :authenticate_user  
    helper_method :current_user, :logged_in?, :authenticate_user 
    
    private 

    def current_user 
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end 

    def logged_in?
        !!current_user 
    end 

    def authenticate_user 
    redirect_to '/' unless logged_in?     
    end
end
