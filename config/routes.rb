Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "articles#index"
  
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  # Maps all the conventional routes for a collection of resources (articles)
  resources :articles do 
    resources :comments
  end
end
