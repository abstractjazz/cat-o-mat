class Trade < ApplicationRecord
    belongs_to :user 
    belongs_to :cat 

   
    def trade_cat 
        buyer_credits_update = self.user.credits - self.cat.cost 
        self.user.update(credits: buyer_credits_update)
<<<<<<< HEAD
       
      if cat_creator = User.find_by(id: self.cat.creator_id)
        seller_credits_update = self.cat.cost + cat_creator.credits   
        cat_creator.update(credits: seller_credits_update)
=======

        user = User.find_by(self.cat.creator_id)
        if user 
        seller_credits_update = self.cat.cost + user.credits
        user.update(credits: seller_credits_update)
>>>>>>> rework_associations
        end 
    end     

    def not_legal(user, cat)
        !!(user.credits < cat.cost)
    end 


end
