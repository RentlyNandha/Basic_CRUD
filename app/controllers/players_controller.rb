class PlayersController < ApplicationController
def index
@players=Player.all
end
def new
@player=Player.new
end
def create
player=Player.new(player_params)
     
     if player.save
        redirect_to root_path
     else
        flash[:errors]=player.errors.full_messages
        redirect_back(fallback_location: root_path)
    end
end
private
def player_params
params.require(:player).permit(:first_name,:last_name)
end
end