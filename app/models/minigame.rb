class Minigame < ApplicationRecord
belongs_to :user

def play_game

    player_credits_update = self.user.credits + rand(1..10) 
    self.user.update(credits: player_credits_update)

end 

end





