  Rails.application.routes.draw do

  resources :users, only: [:create]
  post '/login', to: "auth#create"
  get '/profile', to: "users#profile"
  post '/purchases', to: "purchases#create"
  get '/:user_id/purchases', to: "purchases#show"
  get '/:user_id/purchases/:purchase_id', to: "purchases#indiv"
  delete '/:user_id/purchases/:purchase_id', to: "purchases#delete"
  get '/:user_id/monthlies', to: "monthlies#show"
  get '/:user_id/monthlies/:monthly_id', to: "monthlies#indiv"

end
