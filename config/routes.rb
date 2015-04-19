Rails.application.routes.draw do
  resources :cookie_monsters, only: [:index, :new, :create]
  delete '/cookie_monsters', to: 'cookie_monsters#destroy'
end
