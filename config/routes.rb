Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    get "/orders/:id" => "orders#show"
    post "/orders" => "orders#create"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    post "/carted_products/" => "carted_products#create"
  end
end
