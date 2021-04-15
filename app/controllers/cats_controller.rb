class CatsController < ApplicationController
    
    def index
        @cats = Cat.all
    end
      
    def show
        
        @cat = Cat.find_by(id: params[:id])
      
    end
      
    def new
        @cat = Cat.new
    end
        
      
    def create
        @cat = Cat.create(cat_params)
        redirect_to cat_path(@cat)
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
        params.require(:cat).permit(:name, :cost, :id, :cat_url)
    end
end


