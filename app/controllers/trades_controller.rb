class TradesController < ApplicationController 

    def create
   
       user = current_user
       trade = Trade.create(trade_params)
       trade.trade_cat
       redirect_to user_path(user)
    end 


    private 
    def trade_params
    params.require(:trade).permit(:user_id, :cat_id)
    end 
    
end 