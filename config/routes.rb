Rails.application.routes.draw do
  resources :invites
  devise_for :users
  root to: 'bars#index'
  resources :user_roles
  resources :roles
  resources :bars
  resources :foos
end
