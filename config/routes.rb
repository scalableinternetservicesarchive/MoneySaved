Rails.application.routes.draw do
  
  get 'likes/create'

  get 'comments/create'

  get 'categories/show'

  get 'sessions/new'
  resources :users
  
  get 'users/new'

  resources :deals

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#home'
  get '/signup', to: 'users#new' 
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :categories, only: [:show]
  resources :comments, only: [:create]
  resources :likes, only: [:create]
  
end
