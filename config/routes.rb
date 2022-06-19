$pages = [
  { name: "01_08_2021", photo: "01_08_2021/1.jpg" },
  { name: "01_08_2021", photo: "02_08_2021/4.jpg" },
  { name: "05_08_2021", photo: "05_08_2021/1.jpg" },
  { name: "10_10_2021", photo: "10_10_2021/1.jpg" },
  { name: "28_11_2021", photo: "28_11_2021/1.jpg" }
]

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"

  get "/prices", to: "articles#prices"

  get "/reviews", to: "articles#reviews"

  get "/contacts", to: "articles#contacts"

  $pages.each { |page|
    get "/#{page[:name]}", to: "pages#page_#{page[:name]}"
  }
end
