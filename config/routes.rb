Rails.application.routes.draw do
  resources :books
    devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :users
  
  root 'comments#index'
  get 'comments/index'

  resources :maps, only: [:index, :show]

  #Mapsコントローラ, mapアクションに対応したルーティングを設定
  get '/map_request', to: 'maps#map', as: 'map_request'

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
end
