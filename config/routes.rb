Rails.application.routes.draw do
  devise_for :users do
    resources :posts
  end
  root 'posts#index'
  resources :users, only: [:show]
  resources :posts do
    resources :comments
  end 
end
