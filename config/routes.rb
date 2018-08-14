Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :agent do
    resources :rappers, only: [:index, :create]
    resources :bookings, only: [:index]
    patch "agent/bookings/:id/accept", to: "agent/bookings#accept"
    patch "agent/bookings/:id/refuse", to: "agent/bookings#refuse"
  end

  resources :rappers, only: [:index, :show]
  resources :rappers do
    collection do
      get 'top', to: 'rappers#top'
    end
  end

  resources :bookings, only: [:index]
end
