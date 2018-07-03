Rails.application.routes.draw do
  devise_for :users
  root to: 'gyms#index'

  resources :gyms, only: [:index, :show] do
    resources :bookings, except: :index
  end
    resources :bookings, only: :index
  end
