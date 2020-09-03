Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :courses do
    resources :lessons, only: [:new, :create]
    resources :quizzes, only: [:index, :new, :create] 
  end

  resources :lessons, only: [:show, :edit, :update, :destroy]
  resources :quizzes, only: [:edit, :update, :destroy]
  resources :answers, only: [:create]
  
  
  get "downloadpdf", to: "enrollments#submit"
end

