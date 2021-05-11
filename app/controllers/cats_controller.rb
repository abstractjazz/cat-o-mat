class CatsController < ApplicationController
    
    def index
        @cats = Cat.all  
        @users = User.all
    end

    def new
        @user = User.find(params[:user_id])
        
        if current_user != @user 
        redirect_to user_path(current_user)
        else
        @cat = @user.cats_created.new

        end 
    end 
      
    def show
        @cat = Cat.find(params[:id])
        @user = User.find_by(id: params[:user_id])
        @trade = @cat.trades.new(user_id: current_user.id) 
        @note = @cat.notes.new(user_id: current_user.id)
    end
      
   
    def create
        @user = current_user 
        @cat = Cat.new(cat_params)
       if @cat.save
       @user.cats << @cat
        redirect_to user_cat_path(@user, @cat)
       else 
        render 'new'
    end
end 
      
      
    def update
        cat = Cat.find_by(id: params[:id])
        cat.update(cat_params)
        redirect_to cat_path(cat)
    end

    def destroy
        @user = User.find_by(id: params[:id])
        @cat = Cat.find_by(id: params[:cat_id])
        @user.cats.delete(@cat.id)
        redirect_to user_path(@user.id)
    end 
      
        private
        
    def cat_params
        params.require(:cat).permit(:name, :cost, :id, :cat_url, :creator_id)
    end
end


