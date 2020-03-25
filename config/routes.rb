Rails.application.routes.draw do
  post 'events/new', to: 'events#create'
  root 'users#index'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  resources :users
  resources :events
  resources :invitations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
