Rails.application.routes.draw do
  resources :reviews
  resources :reservations
  resources :hotels
  resources :travelers
  get '/travelers', to: "travelers#index"
  post "/login", to: "travelers#login"
  post "/signup", to: "travelers#signup"
  get "/me", to: "travelers#me"
  patch "/me", to: "travelers#update"

  get '/search/:propid', to: "hotels#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
