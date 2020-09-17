Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "construction", to: "pages#construction"

  resources :courses do
    resources :lessons, only: [:new, :create]
    resources :answers, only: :show
    resources :quizzes, only: [:index, :new, :create]
    resources :enrollments, only: [:new, :create]
  end

  resources :enrollments, only: :show
  resources :lessons, only: [:show, :edit, :update, :destroy] do
    resources :comments, only: [:new, :create]
  end
  resources :comments, only: [:show, :destroy] do
    resources :replies, only: [:new, :create]
  end
  resources :quizzes, only: [:edit, :update, :destroy]
  resources :answers, only: [:create, :destroy]

  get "downloadpdf/:id", to: "enrollments#submit", as: :downloadpdf

end

