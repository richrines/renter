Renter::Application.routes.draw do
  get 'pages/home' => 'high_voltage/pages#show', id: 'home'
  resources :listings, only: [:index]
  root :to => 'high_voltage/pages#show', id: 'home'
end
