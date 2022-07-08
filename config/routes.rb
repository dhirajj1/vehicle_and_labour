Rails.application.routes.draw do
  get 'search', to: 'search#index'
  resources :vehicles_labours
  resources :labours
  resources :vehicles
  devise_for :users
  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  devise_scope :user do
    root "devise/sessions#new"
  end
end
