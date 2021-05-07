class SessionController < ApplicationController
    skip_before_action :authenticate_user, only: [:new, :create]

    def new
        @user = User.new
    end 

    def create     
        if auth 
            @user = User.find_or_create_by(email: auth["info"]["email"]) do |u|
                u.username = auth["info"]["name"]
                u.email = auth["info"]["email"]
                u.password = SecureRandom.hex(10)
                end 
            if @user.persisted? 
            set_user
            else 
                redirect_to new_user_path
            end 
        else 
            @user = User.find_by(username: params[:username])

            if @user && @user.authenticate(params[:password])
            set_user
            else 
            flash[:notice]= "Can't find that user. Have you signed up?"
            redirect_to new_user_path
            end 
        end 
    end 

    def destroy 
        session.delete("user_id")
        redirect_to root_path 
    end 

    private 

    def auth
        request.env['omniauth.auth']
    end 

    def set_user
        session[:user_id] = @user.id
        redirect_to @user 
    end 



end 