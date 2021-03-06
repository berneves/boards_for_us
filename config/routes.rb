Rails.application.routes.draw do
  devise_for :users

  root 'boards#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boards, only: [:new, :create, :index, :show] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :show]

  get 'pages', to: 'pages#profile'

end
