Rails.application.routes.draw do
  resources :evaluations
  resources :presentations
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'evaluations#index'
end
