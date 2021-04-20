class CatsController < ApplicationController
    
    def index
        @cats = Cat.all  
        @users = User.all
    end
      
    def show
        @cat = Cat.find(params[:id])
        @user = User.find_by(id: @cat.creator_id)
        @trade = @cat.trades.build(user_id: current_user.id) 
        @note = @cat.notes.build(user_id: current_user.id)
        # binding.pry
    end
      
    def new
        user = User.find(params[:user_id])
        if current_user != user 
        redirect_to user_path(current_user)
        else
        @cat = Cat.new 
        end 
    end 
        
      
    def create
        @user = current_user 
        @cat = @user.cats.build(cat_params)
        @cat.creator_id = @user.id
        @cat.users << current_user
       if @cat.save
        redirect_to user_cat_path(@user, @cat)
        @user.cats << @cat
       else 
        render 'new'
    end
end 
      
    def edit
        @cat = Cat.find_by(id: params[:id])
        @trade = @cat.trades.build(user_id: current_user.id)
    end
      
    def update
        cat = Cat.find_by(id: params[:id])
        cat.update(cat_params)
        redirect_to cat_path(cat)
    end
      
        private
        
    def cat_params
        params.require(:cat).permit(:name, :cost, :id, :cat_url, :creator_id)
    end
end


