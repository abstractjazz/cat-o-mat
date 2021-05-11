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
<<<<<<< HEAD
        @cat = @user.cats_created.new

=======
        @cat = @user.cats_created.new 
>>>>>>> 5a8d302057026b5d60c0303e6e3befc97133f6a9
        end 
    end 
      
    def show
        @user = current_user
        @cat = Cat.find(params[:id])
<<<<<<< HEAD
        @user = User.find_by(id: params[:user_id])
=======
>>>>>>> 5a8d302057026b5d60c0303e6e3befc97133f6a9
        @trade = @cat.trades.new(user_id: current_user.id) 
        @note = @cat.notes.new(user_id: current_user.id)
    end
      
   
    def create
<<<<<<< HEAD
        @user = current_user 
        @cat = Cat.new(cat_params)
=======
        @cat = Cat.new(cat_params)
        @user = User.find(params[:trade][:user_id])
        @cat.creator = @user
>>>>>>> 5a8d302057026b5d60c0303e6e3befc97133f6a9
       if @cat.save
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
        params.require(:cat).permit(:name, :cost, :id, :cat_url, :user_id)
    end
end


