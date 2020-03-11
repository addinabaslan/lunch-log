Rails.application.routes.draw do
  root 'posts#index'
  get  '/login',   to: 'users#login'
  get  '/register',  to: 'users#new'
  post '/signup',  to: 'users#create'
  post   '/login',   to: 'sessions#create'
  resources :users
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
