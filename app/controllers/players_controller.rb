class PlayersController < ApplicationController
def index
    @players=Player.all
end
def create
     player=Player.new(player_params)
     
     if player.save
        redirect_to "/players"
     else
        flash[:errors]=player.errors.full_messages
        redirect_to "/players/new"
     end
end
def new
end
def show
    @player=Player.find(params[:id])
end
def edit
    @player=Player.find(params[:id])
end
def update
    player=Player.find(params[:id])

    if player.update(player_params)
        redirect_to "/players"
     else
        flash[:errors]=player.errors.full_messages
        redirect_to "/players/new"
     end
end
def destroy
    player=Player.find(params[:id])
    if player.delete
        redirect_to "/players"
     else
        flash[:errors]=player.errors.full_messages
        redirect_to "/players/new"
     end
end
private
def player_params
params.require(:player).permit(:first_name,:last_name)
end
end
