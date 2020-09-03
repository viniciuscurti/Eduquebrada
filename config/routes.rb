Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :courses do
    resources :lessons, only: [:new, :create]
    resources :answers, only: :show
    resources :quizzes, only: [:index, :new, :create]
    resources :enrollments, only: [:new, :create]
  end

  resources :lessons, only: [:show, :edit, :update, :destroy]
  resources :quizzes, only: [:edit, :update, :destroy]
  resources :answers, only: [:create]
  
  get "downloadpdf", to: "enrollments#submit"
end

