Ritly::Application.routes.draw do

	resources :users, :sessions

	root to: "ritly#index"

	get "/go", to: "ritly#index"

	get '/go/signup', to: 'users#new'

	delete '/signout', to: 'sessions#destroy'

	get '/go/signin', to: 'sessions#new'

	get "/go/:id", to: "ritly#show"

	get  "/:random_string", to: "ritly#redirect"

	post "/go/show", to: "ritly#create"

end
