Ritly::Application.routes.draw do

  root to: "ritly#index"

  get "/go", to: "ritly#index", as: :go

  get "/go/:id", to: "ritly#show", as: :link

  get  "/:random_string", to: "ritly#redirect"

  post "/go/show", to: "ritly#create"
  
end
