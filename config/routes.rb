Rails.application.routes.draw do
  root to: 'pages#home'
  # , :path_prefix => 'profile'
  devise_for :users
  # match '/:id', to: 'users#show', via: 'get'
  # controllers: { registrations: 'users/registrations'}
  resources :users, only: [:show]
  # do
  #   member
  # end
  resources :offers do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :index]
  # resources :offers, except: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
