Rails.application.routes.draw do
  devise_for :users
  root to: 'gyms#index'

  resources :gyms, only: [:index, :show] do
    resources :bookings, only: :show
  end
    resources :bookings, only: [:index, :new]
  end
