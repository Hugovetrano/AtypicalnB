Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :properties
  resources :bookings
  get '/owner/properties', to: 'properties#index', as: :owner_properties
  get '/owner/bookings', to: 'bookings#index', as: :owner_index
  patch '/owner/bookings/:id', to: 'bookings#accept', as: :accept
  patch '/owner/bookings/:id', to: 'bookings#refuse', as: :refuse
  resources :users, only: %i[show]
end
