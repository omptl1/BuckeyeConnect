Rails.application.routes.draw do
  devise_for :users
  resources :evaluations
  
  # Separate routes for student and teacher dashboards
  get 'student_dashboard', to: 'dashboards#student', as: 'student_dashboard'
  get 'teacher_dashboard', to: 'dashboards#teacher', as: 'teacher_dashboard'
  
  
  devise_scope :user do
    authenticated :user do
      root to: 'evaluations#index', as: :authenticated_root # Default for authenticated users
      constraints lambda { |request| request.env['warden'].user.admin? } do
        root to: 'presentations#index', as: :admin_authenticated_root
      end
      get 'users/:id', to: 'users#show', as: :user
    end
  
    unauthenticated do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root 'static_pages#home'
end
