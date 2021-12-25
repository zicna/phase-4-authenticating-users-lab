Rails.application.routes.draw do
  get 'users/show'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "/me", to: "users#show"
end
