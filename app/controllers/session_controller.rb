class SessionController < ApplicationController
    skip_before_action :authenticate_user, only: [:new, :create]

    def new
        @user = User.new
    end 

    def create 
        @user = User.find_by(username: params[:username])
            
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            flash[:notice]= "Can't find that user. Have you signed up?"
            redirect_to new_user_path
        end 

    end
    
    def destroy 
        session.delete("user_id")
        redirect_to root_path 
    end 
end 