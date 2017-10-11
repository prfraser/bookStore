Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  resources :authors
  resources :books
  get '/stores', to: 'store#index'
  resources :store, only: [:show]
end
