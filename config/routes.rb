Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :bookings
      resources :categories
      resources :gyms
      resources :orders

      root to: "users#index"
    end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get '/passes', to: 'orders#index'
  get '/confirmation', to: 'orders#confirmation'

  resources :gyms, only: [:index, :show] do
    resources :categories do
    end
  end

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
  resources :orders, only: :index
end
