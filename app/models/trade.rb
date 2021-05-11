class Trade < ApplicationRecord
    belongs_to :user 
    belongs_to :cat 

    def legal
    !!(self.user.credits > self.cat.cost)
    end 

    def trade_cat 
        
        buyer_credits_update = self.user.credits - self.cat.cost 
        self.user.update(credits: buyer_credits_update)

        user = User.find_by(self.cat.creator_id)
        if user 
        seller_credits_update = self.cat.cost + user.credits
        user.update(credits: seller_credits_update)
        end 
    end 

    

end
