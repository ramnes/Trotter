Trotter::Application.routes.draw do
  get "sessions/new"
  get "sessions/destroy"
  post "sessions/create"

  resources :trotts
  resources :users

  root :to => 'users#new'
end
