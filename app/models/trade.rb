class Trade < ApplicationRecord
    belongs_to :user 
    belongs_to :cat 

   
    def trade_cat 
        
        buyer_credits_update = self.user.credits - self.cat.cost 
        self.user.update(credits: buyer_credits_update)
       
        cat_creator = User.find(self.cat.creator_id)
        
        if cat_creator 
        seller_credits_update = self.cat.cost + self.user.credits 
        cat_creator.update(credits: seller_credits_update)
        end 
    end     

    def not_legal(user, cat)
        !!(user.credits < cat.cost)
    end 


end
