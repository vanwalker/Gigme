Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users # , :path_prefix => 'profile'
  # match '/:id', to: 'users#show', via: 'get'
  # controllers: { registrations: 'users/registrations'}
  # resources :users, only: [:show]
  resources :offers do
    resources :bookings
  end
  # resources :offers, except: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
