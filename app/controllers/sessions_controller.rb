 class SessionController < ApplicationController
def create
user=User.find_by(params[:email])
end 
end