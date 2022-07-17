# frozen_string_literals: true

# .nodoc
Rails.application.routes.draw do
  get 'account_activations/edit'
  get 'sessions/new'
  resources :users
  get '/signup', to: 'users#new'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :account_activations, only: %i[edit]

  root 'static_pages#home'
end
