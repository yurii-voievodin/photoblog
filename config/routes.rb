Rails.application.routes.draw do
  get 'pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"

  get "/prices", to: "articles#prices"

  get "/reviews", to: "articles#reviews"

  get "/contacts", to: "articles#contacts"
end