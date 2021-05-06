class TradesController < ApplicationController 

    def create
       user = current_user
        if User.has_no_credits.include?(user) 
        return need_more_credits
       else
       cat = Cat.find(params[:trade][:cat_id])
        
            if user.has_cat(cat) 
            redirect_to user_path(user)
            return flash[:notice]="You already have this kitteh!" 
            else
        
                if trade.legal(user, cat)
                    
               return need_more_credits
                end
            end 
        end 
       trade = Trade.create(trade_params)
       trade.trade_cat
       redirect_to user_path(user)  
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