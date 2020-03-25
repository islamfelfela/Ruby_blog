Rails.application.routes.draw do
  # resources :post
  resources :posts
  root to: 'posts#index'
 
end
