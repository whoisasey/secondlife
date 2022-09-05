Rails.application.routes.draw do
  resources :admins
  resources :charities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "charities#index"
  get 'admin', to: 'admins#index'
  get 'signup', to: 'admins#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
