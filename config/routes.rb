Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/passes', to: 'orders#index'

  resources :gyms, only: [:index, :show] do
    resources :categories do
      resources :bookings, only: :new
    end
  end
  resources :bookings, only: [:index, :new]

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
end
