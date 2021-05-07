class TradesController < ApplicationController 

    def create
    user = current_user
   
        if User.has_no_credits.include?(user) 
        return need_more_credits
        end
        cat = Cat.find(params[:trade][:cat_id])
        trade = Trade.new(trade_params)
        
        if user.has_cat(cat) 
        redirect_to user_path(user)
        return flash[:notice]= "You already have this kitteh!" 
        elsif trade.not_legal(user, cat)            
        return need_more_credits
        else 
        trade.trade_cat
        trade.save
        redirect_to user_path(user)
        end 
    end 

    
    private 

    def trade_params
    params.require(:trade).permit(:user_id, :cat_id)
    end 

    def need_more_credits 
        redirect_to newgame_path
        flash[:notice]="You need more credits for this kitteh!"
    end 
    
end 