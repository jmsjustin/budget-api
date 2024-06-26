Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/categories" => "categories#index"
  post "/categories" => "categories#create"
  get "/categories/:id" => "categories#show"
  patch "/categories/:id" => "categories#update"
  delete "/categories/:id" => "categories#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"

  get "/expenses" => "expenses#index"
  post "/expenses" => "expenses#create"
  get "/expenses/:id" => "expenses#show"
  patch "/expenses/:id" => "expenses#update"
  delete "/expenses/:id" => "expenses#destroy"
end
