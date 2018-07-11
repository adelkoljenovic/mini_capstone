Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/products" => "products#index"
    post "/photos" => "photos#create"
    get "/photos/:id" => "photos#show"
    patch "/photos/:id" => "photos#update"
    delete "/photos/:id" => "photos#destroy"
  end
end
