Rails.application.routes.draw do
  devise_for :users
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
