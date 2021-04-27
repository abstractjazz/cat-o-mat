class Trade < ApplicationRecord
    belongs_to :user 
    belongs_to :cat 

    def legal
    !!(self.user.credits > self.cat.cost)
    end 

    def trade_cat 

        buyer_credits_update = self.user.credits - self.cat.cost 
        self.user.update(credits: buyer_credits_update)

        if user = User.find(self.cat.creator_id)
        seller_credits_update = self.cat.cost + user.credits
        user.update(credits: seller_credits_update)
        end 
    end 

    

end
