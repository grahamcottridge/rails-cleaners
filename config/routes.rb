  Rails.application.routes.draw do
  # get 'users/show'


  mount Attachinary::Engine => "/attachinary"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  get 'search', to: 'pages#search'

  resources :users, only: [:show, :edit, :update] do
    resources :bookings
    resources :reviews, only: [:index, :show, :edit, :new, :create]
  end
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
