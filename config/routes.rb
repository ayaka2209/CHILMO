Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "homes#index"
  
  resources :homes, only: %i[ index ]
  resources :attendance_books

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    post 'users/admin_guest_sign_in', to: 'users/sessions#admin_guest_sign_in'
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
    get 'users/sign_out', to: 'devise/sessions#destroy'
  end

  resources :posts do
    resources :comments
  end

  resources :teams do
    resources :kids
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
