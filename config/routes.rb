Rails.application.routes.draw do
  resources :episodes
  root 'hello#index'
end
