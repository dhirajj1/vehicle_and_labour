Rails.application.routes.draw do
  resources :labours
  resources :vehicles
  resources :vehicles_labours
  devise_for :users
  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  root "devise/sessions#new"
  resources  :users
  resources :vehicles_labours

end
