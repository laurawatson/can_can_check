Rails.application.routes.draw do
  resources :homes
  resources :invites
  devise_for :users
  root to: 'homes#index'
  resources :user_roles
  resources :roles
  resources :bars
  resources :foos
end
