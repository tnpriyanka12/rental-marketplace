Rails.application.routes.draw do

  # Root Path definition
  root to: 'properties#home'

  resources :properties do
    resources :bookings
  end

  resources :photos
  resources :tags
  resources :users
end
