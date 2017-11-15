<<<<<<< HEAD
  Rails.application.routes.draw do
  # get 'users/show'
=======
Rails.application.routes.draw do
>>>>>>> 5e588b29e5085cd84c2f4ffd5f3f0d72c31a519e

  mount Attachinary::Engine => "/attachinary"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :users, only: [:show] do
    resources :bookings, only: [:new, :create, :show]
  end

  resources :bookings do
    resources :reviews, only: [:show, :edit, :new]
  end
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
