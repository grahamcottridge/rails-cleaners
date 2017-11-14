Rails.application.routes.draw do
  # get 'users/show'

  resources :users

  devise_for :users
  root to: 'pages#home'
  resources :cleaners do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings do
    resources :reviews, only: [:show, :edit, :new]
  end
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
