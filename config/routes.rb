Rails.application.routes.draw do
  resources :reviews
  resources :reservations
  resources :hotels
  resources :travelers
  post "/login", to: "travelers#login"
  post "/signup", to: "travelers#signup"
  get "/me", to: "travelers#me"
  patch "/me", to: "travelers#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
