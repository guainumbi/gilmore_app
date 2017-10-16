Rails.application.routes.draw do
  resources :episodes
  resources :references
  root 'hello#index'
end
