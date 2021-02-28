Rails.application.routes.draw do
  get '/final' =>'final#index', as:'final'
  get '/finals' =>'final#show', as:'finals'
  resources :agents
  resources :details
  get '/carts' => 'carts#show', as: 'carts'
  get '/confirm' => 'details#confirm', as: 'confirm'
  get '/shops' => 'shops#index', as: 'shops'
  get 'shops/show'
  resources :products
  resources :shops, only:[:index, :show]
  resources :final, only:[:index, :show]
  resources :order_items
  resources :carts, only:[:show]
  devise_for :users
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
