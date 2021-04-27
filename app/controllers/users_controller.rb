class UsersController < ApplicationController
skip_before_action :authenticate_user, only: [:new, :create]
    
    def new 
        @user = User.new
        @cat = Cat.new 
    end 

    def create
        @user = User.new(user_params)
        if @user.save 
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            render 'new'
        end 
    end 
    
    def show 
       if @user = User.find_by(id: params[:id])
       else 
        render '_no_user'
       end 
    end 

    def edit 
        @user = User.find_by(id: params[:id])
    end 

    def update 
        @user = User.find_by(id: params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
    end 


    def destroy
        @user = User.find(params[:user_id])
        @user.cats.delete
        @user.delete
        redirect_to root_path
    end 

   

    private 

    def user_params 
        params.require(:user).permit(:username, :email, :password)
    end 

end 