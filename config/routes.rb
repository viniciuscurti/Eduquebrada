Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :courses do
    resources :lessons, only: [:new, :create]
  end

  resources :lessons, only: [:show, :edit, :update, :destroy]
end
