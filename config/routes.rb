Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :courses do
    resources :lessons, only: [:new, :create]
    resources :answers, only: :show
    resources :quizzes, only: [:index, :new, :create] do
      get "correct", to: "quizzes#quiz_correct"
    end
    resources :enrollments, only: [:new, :create]
  end

  resources :lessons, only: [:show, :edit, :update, :destroy]
  resources :quizzes, only: [:edit, :update, :destroy]


  get "downloadpdf", to: "enrollments#submit"
end

