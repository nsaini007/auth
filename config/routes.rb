Rails.application.routes.draw do
  root 'users#new'
  get "success", to: "users#success"
  get "/sign_in", to: "sessions#new"
  get "/sign_out", to: "sessions#destroy"
  resources :users, only: [:create]
  resource :sessions, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
