Rails.application.routes.draw do
  #do custom routes above
  root "sessions#home"

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  #login
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  #logout
  delete '/logout' => 'sessions#destroy'



  resources :users
  resources :bus_trips
  resources :shifts
  resources :drivers
  resources :buses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
