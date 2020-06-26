Rails.application.routes.draw do
    devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  root 'comments#index'
  get 'comments/index'

  resources :maps, only: [:index, :show]

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
end
