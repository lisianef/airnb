Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :agent do
    resources :rappers, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :bookings, only: [:index] do
      member do
        patch :accept
        patch :refuse
      end
    end
    # patch "bookings/:id/accept", to: "bookings#accept"
    # patch "bookings/:id/refuse", to: "bookings#refuse"
  end

  resources :rappers, only: [:index, :show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index]
end
