Rails.application.routes.draw do
  resources :publishers
  resources :books
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get "search/:isbn", to: "books#search",  defaults: { format: 'turbo_stream' }, as: "search_book"
end
