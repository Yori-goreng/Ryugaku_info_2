Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  
  root 'home#top'
  get 'comments/index'

  resources :rooms, only: [:show, :create]
  resources :maps, only: [:index, :show]
  #Mapsコントローラ, mapアクションに対応したルーティングを設定
  get '/map_request', to: 'maps#map', as: 'map_request' 
end
