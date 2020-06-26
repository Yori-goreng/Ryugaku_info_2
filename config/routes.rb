Rails.application.routes.draw do
  devise_for :users
  root 'comments#index'
  get 'comments/index'

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
end
