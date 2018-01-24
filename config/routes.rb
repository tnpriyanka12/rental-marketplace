Rails.application.routes.draw do

  # Root Path definition
  root to: 'properties#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/profile' => 'pages#profile'
  get '/admin'   => 'pages#admin_party'

  resources :properties do
    resources :bookings
  end

  resources :photos
  resources :tags
  resources :users
end
