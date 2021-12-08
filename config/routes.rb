Rails.application.routes.draw do
  devise_for :users do
    resources :posts
  end
  root 'posts#index'
  
  resources :posts do
    resources :comments
  end 
end
