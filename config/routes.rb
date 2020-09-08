Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :courses do
    resources :lessons, only: [:new, :create]
    resources :answers, only: :show
    resources :quizzes, only: [:index, :new, :create]
    resources :enrollments, only: [:new, :create]
  end

  resources :enrollments, only: :show
  resources :lessons, only: [:show, :edit, :update, :destroy] do
    resources :comments, only: :create do
      resources :replies, only: :create
    end
  end
  resources :quizzes, only: [:edit, :update, :destroy]
  resources :answers, only: [:create]

  get "downloadpdf", to: "enrollments#submit"
end

