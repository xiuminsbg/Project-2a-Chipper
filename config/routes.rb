Rails.application.routes.draw do
  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  # resources :posts
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  get 'home', to: 'users#index'

  resources :users do
      resources :posts
  end

  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy', as: :sign_out
  resources :sessions, only: [:create]

end
# get 'sign_up', to: 'users#new', as: :sign_up
# get 'sessions/new', as: :sign_in
