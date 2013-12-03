Renter::Application.routes.draw do
  match "/blog" => redirect("/blog/")
  resources :listings, only: [:index]
end
