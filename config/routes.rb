Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :sessions, only: :create
end
