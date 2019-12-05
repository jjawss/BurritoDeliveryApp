Rails.application.routes.draw do
  
  resources :users
  resources :burritos
  resources :orders
  resources :stores
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
