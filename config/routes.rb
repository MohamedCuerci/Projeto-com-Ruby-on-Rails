Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :market_lists do
    resources :items
  end

  root "market_lists#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
