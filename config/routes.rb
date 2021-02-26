Rails.application.routes.draw do
  get '/carts' => 'carts#show', as: 'carts'
  get '/shops' => 'shops#index', as: 'shops'
  get 'shops/show'
  resources :products
  resources :shops, only:[:index, :show]
  resources :order_items
  resources :carts, only:[:show]
  devise_for :users
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
