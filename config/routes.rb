Rails.application.routes.draw do
  
  root "signins#index"

  resource :signins

  get "/login", to: "users#new"
  post "/login", to: "users#create"

  get "/play", to: "users#play"
end
