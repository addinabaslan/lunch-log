Lunchbox::Application.routes.draw do
  resources :users
  get '/register' => 'users#new'
  get '/login' => 'users#login', :as => 'login'
  get '/logout' => 'users#logout', :as => 'logout'
  get 'selections' => 'selections#index'
  get 'selections/current' => 'selections#current'
  get 'selections/vote/:selection_id/:vote_value' => 'selections#vote', :as => 'vote'
  
  resources :categories
  
  resources :places
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
