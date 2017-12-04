Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :destroy]
  resources :episodes
  resources :references
  root 'hello#index'
end
