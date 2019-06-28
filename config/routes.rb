Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#index"
   resources :players
resources :users
 get 'welcome' => 'players#welcome'
resources :sessions, only:[:icreate]
#   get 'players' => 'players#index'
# get 'players/new' => 'players#new'
# post 'players' => 'players#create'
# get 'players/:id/edit' => 'players#edit' , as: 'player_edit'
# patch 'players/:id' => 'players#update'
# delete 'players/:id' => 'players#destroy'

end
