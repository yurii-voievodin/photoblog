Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"

  get "/prices", to: "articles#prices"

  get "/reviews", to: "articles#reviews"

  get "/contacts", to: "articles#contacts"

  get "categories/family", to: "categories#family", as: "categories_family"
  get "categories/individual", to: "categories#individual", as: "categories_individual"
  get "categories/wedding", to: "categories#wedding", as: "categories_wedding"
  get "categories/love_story", to: "categories#love_story", as: "categories_love_story"

  get "collections/:id", to: "collections#show", as: "collections"
end
