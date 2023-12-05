Rails.application.routes.draw do
  devise_for :users
  resources :evaluations
  resources :presentations
  get 'static_pages/home'
  get 'static_pages/userview'
  
  resources :presentations
  devise_scope :user do
    authenticated :user do
      root to: 'presentations#index', as: :authenticated_root
      get 'users/:id', to: 'users#show', as: :user
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
      
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root 'static_pages#home'
end
