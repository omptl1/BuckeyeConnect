Rails.application.routes.draw do
  devise_for :users
  resources :evaluations
  resources :presentations
  
  devise_scope :user do
    authenticated :user do
      root to: 'evaluations#index', as: :authenticated_root # Default for authenticated users
      constraints lambda { |request| request.env['warden'].user.admin? } do
        root to: 'presentations#index', as: :admin_authenticated_root
      end

      get 'presentations/student_dashboard', to: 'presentations#student_dashboard', as: 'student_dashboard_presentations'
      get 'users/:id', to: 'users#show', as: :user    
      get 'upcoming_presentations', to: 'presentations#upcoming_presentations'
      get '/presentations/new', to: 'presentations#new', as: 'schedule_presentation'
      get 'student_statistics', to: 'admin#student_statistics'

    end
  
    unauthenticated do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root 'static_pages#home'
end
