Rails.application.routes.draw do
  root 'posts#index'
  get  '/login',   to: 'users#login'
  get  '/register',  to: 'pages#signup'
  post '/register',  to: 'users#create'
  post   '/login',   to: 'sessions#create'
  resources :users
  
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
