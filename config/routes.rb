Rails.application.routes.draw do
  devise_for :users
  resources :gameplayers
  resources :matchteams
  resources :games
  resources :mattches
  resources :players
  resources :teams


  root to: 'teams#index'

	get '/team_players/:id', to: 'teams#teamplayers'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
