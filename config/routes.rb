Rails.application.routes.draw do
  root "welcome#index"
  get '/favourites', to: 'favourite#show'
  get '/stores', to: 'store#index'
  resources :books do
	  put :favourite, on: :member
	end
	resources :authors
	resources :store, only: [:show, :search]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
