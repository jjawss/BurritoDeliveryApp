Rails.application.routes.draw do
  
  get('/users/login', to: 'users#login')
  post('/users/login', to: 'users#auth')
  get('/users/my_profile', to: 'users#my_profile')
  get('/users/logout', to: 'users#logout')
  get('/homepages', to: 'homepages#home')
  
  get('/burritos/new/:orders_id', to: 'burritos#new')
  
  resources :users, except: [:show]
  resources :burritos, except:[ :new, :show]
  resources :orders
  resources :stores
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
