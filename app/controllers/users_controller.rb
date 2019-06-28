class UsersController < ApplicationController
def index
@user=User.new
end
def create
    player=User.new(user_params)
     
    if player.save
        sessions[:user_id]=player.id
       redirect_to "/players"
    else
       flash[:errors]=player.errors.full_messages
       redirect_back(fallback_location: root_path)
   end
end
private
def user_params
    params.require(:user).permit(:user_name,:email,:password,:password_confirmation)
end
end