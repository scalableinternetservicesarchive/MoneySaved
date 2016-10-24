Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#home'

  get '/signup', to: 'users#new'
  get 'users/new'

  #Login
  get 'sessions/new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'categories/show'
  get 'comments/create'
  get 'likes/create'
  #resources
  resources :users

  resources :deals

  resources :categories, only: [:show]

  resources :comments, only: [:create]

  resources :likes, only: [:create]
  
end
