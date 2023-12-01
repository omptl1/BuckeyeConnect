Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/userview'
  resources :evaluations
  resources :presentations
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
