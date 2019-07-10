  Rails.application.routes.draw do

  resources :users, only: [:create]
  post '/login', to: "auth#create"
  get '/profile', to: "users#profile"
  get '/profile/:user_id', to: "users#show"


  post '/purchases', to: "purchases#create"
  get '/:user_id/purchases', to: "purchases#show"
  get '/:user_id/purchases/:purchase_id', to: "purchases#indiv"
  patch '/:user_id/purchases/:purchase_id', to: "purchases#edit"
  delete '/:user_id/purchases/:purchase_id', to: "purchases#delete"

  post '/monthlies', to: "monthlies#create"
  get '/:user_id/monthlies', to: "monthlies#show"
  get '/:user_id/monthlies/:monthly_id', to: "monthlies#indiv"
  patch '/:user_id/monthlies/:monthly_id', to: "monthlies#edit"
  delete '/:user_id/monthlies/:monthly_id', to: "monthlies#delete"

end
