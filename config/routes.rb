Rails.application.routes.draw do
  resources :users

  resources :cookie_monsters, only: [:index, :new, :create]
  delete '/cookie_monsters', to: 'cookie_monsters#destroy'

  resources :sessions, only: [:index, :new, :create]
end
