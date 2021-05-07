class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action  :authenticate_user  
    helper_method :current_user, :logged_in?, :authenticate_user, :user_has_cat
    
    private 

    def current_user 
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end 

    def logged_in?
        !!current_user 
    end 

    def authenticate_user 
        if !logged_in? 
            flash[:notice] = "If you wanna meet the kittehs, you must sign up or login."   
            redirect_to '/'
        end 
    end

    def user_has_cat
        cat = Cat.find(params[:id])
        @current_user.cats.include?(@cat) || @current_user.id == @cat.creator_id 
    end 



end
