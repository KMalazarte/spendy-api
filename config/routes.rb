  Rails.application.routes.draw do

  resources :users, only: [:create]
  post '/login', to: "auth#create"
  get '/profile', to: "users#profile"
  post '/purchases', to: "purchases#create"
  get '/:user_id/purchases', to: "purchases#show"


end
