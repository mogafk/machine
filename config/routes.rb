Rails.application.routes.draw do
  resources :flyers
  resources :posts
  resources :visitors
  root to: 'posts#index'
  get 'products/:id', to: 'products#show', :as => :products
  devise_for :users
  resources :users
end
