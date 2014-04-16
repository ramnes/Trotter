Trotter::Application.routes.draw do
  resources :trotts


  resources :users
  root :to => 'users#new'
end
