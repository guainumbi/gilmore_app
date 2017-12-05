Rails.application.routes.draw do
  resources :users
  resources :episodes
  resources :references
  root 'hello#index'
end
