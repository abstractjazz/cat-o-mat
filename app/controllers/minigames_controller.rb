class MinigamesController < ApplicationController

    def new 
    @minigame = Minigame.new
    end 
    
    def create
        user = current_user
        game = user.minigames.build(minigame_params)
        game.play_game
        redirect_to user_path(user)
     end 
 
 
     private 
     def minigame_params
     params.require(:minigame).permit(:user_id)
     end 
end 