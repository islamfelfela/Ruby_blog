Rails.application.routes.draw do

  get 'login', to: 'users#login'
  post 'signin', to: 'users#login'
  get 'register', to: 'users#register'
  post 'signup', to: 'users#signup'

  # resources :post
  resources :posts
  root to: 'posts#index' 
 
end
