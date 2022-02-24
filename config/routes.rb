# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # About path
  get 'about', to: 'about#index', as: :about

  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  delete 'logout', to: 'sessions#destroy'

  # Defines the root path route ("/")
  root to: 'main#index'
end
