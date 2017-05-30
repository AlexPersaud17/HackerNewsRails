Rails.application.routes.draw do
  root 'posts#index'
  resources :posts

  get '/users/login', to: 'users#login'
  get '/users/logout', to: 'users#logout'
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  post '/users/login', to: 'users#authenticate'

  
end
