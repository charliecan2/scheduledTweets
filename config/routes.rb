# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # About path
  get 'about', to: 'about#index', as: :about

  get 'password', to: 'password#edit'
  patch 'password', to: 'password#update'

  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  get 'password/reset', to: 'password_reset#new'
  post 'password/reset', to: 'password_reset#create'

  # Defines the root path route ("/")
  root to: 'main#index'
end
