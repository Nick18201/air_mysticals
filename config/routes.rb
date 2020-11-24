Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # as both renter and owner
  resource :dashboard, only: [:show]

  # as a Renter
  resources :animals, only: [:index, :show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [] do
    member do
      patch :cancel
    end
  end

  # as an Owner
  resources :my_animals, only: [:new, :create]
  resources :reservations, only: [] do
    member do
      patch :accept
      patch :deny
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
