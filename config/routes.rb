Rails.application.routes.draw do
  resources :admins
  resources :charities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "charities#index"
    get 'signup', to: 'admins#new'
  resources :admins,
end
