Trotter::Application.routes.draw do
  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  resources :trotts


  resources :users
  root :to => 'users#new'
end
