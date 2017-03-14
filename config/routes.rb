Rails.application.routes.draw do
  
  get "/experiences", to: 'experiences#index'
  get "/login", to: 'sessions#new'
  post "/login", to: 'sessions#create'
  get "/logout", to: 'sessions#destroy'
  
end
