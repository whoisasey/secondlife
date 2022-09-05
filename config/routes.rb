Rails.application.routes.draw do
  resources :charities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root "charities#index"
  get 'admin', to: 'admins#index'
  get 'admin/signup', to: 'admins#new'
  get 'admin/show/:id', to: 'admins#show', as: 'admin_show'
  resources :admins, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
