Rails.application.routes.draw do
  resources :baskets
  resources :favorites, only: [:create, :index, :show, :destroy]
      delete "/favorites", to: "favorites#destroy"
  resources :users, only: [:create, :index]

    post '/login', to: "auth#create"
    get '/profile', to: "users#profile"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
