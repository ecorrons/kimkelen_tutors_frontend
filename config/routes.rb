Rails.application.routes.draw do

  root to: 'tutors#index'

  resources :tutors, only: [:index, :show]

  resources :students, only: [:index, :show]

  resources :marks, only: [:index]

  resources :absences, only: [:index]

  resources :disciplinary_sanctions, only: [:index]

end