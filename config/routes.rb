Renter::Application.routes.draw do
  resources :listings, only: [:index]
  resources :listings_users, only: [:create]
end
