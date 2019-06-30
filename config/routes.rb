  Rails.application.routes.draw do

  resources :users, only: [:create]
  post '/login', to: "auth#create"
  get '/profile', to: "users#profile"
  # get '/users/:username/purchases', to: "purchases#show"
  post '/purchases', to: "purchases#create"
  get '/purchases', to: "purchases#index"


end
