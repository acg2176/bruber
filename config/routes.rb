Rails.application.routes.draw do
  #do custom routes above

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'




  resources :users
  resources :bus_trips
  resources :shifts
  resources :drivers
  resources :buses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
