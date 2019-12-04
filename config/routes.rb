Rails.application.routes.draw do
  get 'sessions/new'
  post 'sessions/new' , to: 'sessions#create'
  get 'sessions/destroy'
  root 'users#index'
  get '/signin' , to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
