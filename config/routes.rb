Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :properties do
    resources :bookings, only: [:create]
  end

  resources :bookings, except: [:create]

  namespace :owner do
    resources :bookings, only: [:index] do
      member do
        patch :accept
        patch :refuse
      end
    end
    resources :properties, only: [:index, :show, :edit, :update, :destroy]
  end

  resources :users, only: %i[show]

  get '/mode/toggle', to: 'users#toggleOwnerMode', as: :owner_mode_toggle
end
