Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

# Areas Routes
  get '/areas/new' => 'areas#new'
  get "/areas" => "areas#index"
  patch "/areas/:id" => 'areas#update'
  get "/areas/:id" => "areas#show"
  post '/areas' => 'areas#create'
  get '/areas/:id/edit' => 'areas#edit'

# Routes routes
  get "/routes" => "routes#index"
  get "/routes/:id" => "routes#show"
  get '/areas/:area_id/routes' => 'routes#by_area', as: 'routes_by_area'
  get '/:area_id/routes/new' => 'routes#new'

  # Defines the root path route ("/")
  # root "posts#index"
end
