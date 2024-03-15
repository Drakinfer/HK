Rails.application.routes.draw do
  namespace :admin do
    resources :indices, :admin
    get 'admin/index'
    resources :types do
      member do
        post :toggle_type_active
      end
    end
  end
  devise_for :users

  root 'home#index'
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end
end
