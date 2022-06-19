Rails.application.routes.draw do
  get 'pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"

  get "/prices", to: "articles#prices"

  get "/reviews", to: "articles#reviews"

  get "/contacts", to: "articles#contacts"

  get "/01_08_2021", to: "pages#page_01_08_2021"
  get "/02_08_2021", to: "pages#page_02_08_2021"
  get "/05_08_2021", to: "pages#page_05_08_2021"
  get "/10_10_2021", to: "pages#page_10_10_2021"
end
