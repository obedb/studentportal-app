Rails.application.routes.draw do
  
  get "/experiences", to: 'experiences#index'
  get "/login", to: 'sessions#new'
  post "/login", to: 'sessions#create'
  get "/logout", to: 'sessions#destroy'

  get "/", to: 'students#index'
  get "/students", to: 'students#index'
  get "/students/:id", to: 'students#show'
  get "/students/:id/edit", to: 'students#edit'
  patch "/students/:id", to: 'students#update'

  get "/educations/:id", to: 'educations#show'
  get "/educations/:id/edit", to: 'educations#edit'
  patch "/educations/:id", to: 'educations#update'
  
end
