Rails.application.routes.draw do
  get 'events/new'
  post 'events/new', to: 'events#create'
  get 'events/create'
  get 'events/show'
  get 'sessions/new'
  post 'sessions/new', to: 'sessions#create'
  get 'sessions/destroy'
  get 'events/index', to: 'events#index'
  root 'users#index'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  resources :users
  resources :events
  resources :invitations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
