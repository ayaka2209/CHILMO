Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "homes#index"
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
    get 'users/sign_out', to: 'devise/sessions#destroy'
  end

  resources :posts do
    resources :comments
  end
end
