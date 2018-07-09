Rails.application.routes.draw do
  devise_for :users
  root to: 'gyms#index'

  resources :gyms, only: [:index, :show] do
    resources :categories do
      resources :bookings, only: :new
    end
  end
  resources :bookings, only: [:index, :new]
end
