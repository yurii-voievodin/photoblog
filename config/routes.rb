Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"

  get "/prices", to: "articles#prices"

  get "/reviews", to: "articles#reviews"

  get "/contacts", to: "articles#contacts"

  get "collections/:id", to: "collections#show", as: "collections"
end
