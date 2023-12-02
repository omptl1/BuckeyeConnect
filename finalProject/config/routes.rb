Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/home'
  get 'static_pages/userview'
  resources :evaluations
  resources :presentations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
