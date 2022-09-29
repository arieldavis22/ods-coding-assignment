Rails.application.routes.draw do
  resources :flights
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/flight-names", to: "flights#find_flight_names"
end
