Rails.application.routes.draw do
  resources :bookings do
    resources :reviews, only: [:show, :edit, :new]
  end
end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
