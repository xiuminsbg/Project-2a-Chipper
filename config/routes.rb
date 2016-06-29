Rails.application.routes.draw do


  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/', to: 'home#index', as: :home
  root 'posts#index', as: :home
  get '/user', to: 'users#show'
  get '/user/posts', to: 'posts#index'
  get '/user/post', to: 'posts#show'
  get '/users/:user_id/posts/:id', to: 'posts#show', as: :show_user_post


  resources :users, only: [:new, :create] do
      resources :posts
  end

  get 'sign_in', to: 'sessions#new', as: :sign_in
  delete 'sign_out', to: 'sessions#destroy', as: :sign_out
  resources :sessions, only: [:create]

end
# get 'sign_up', to: 'users#new', as: :sign_up
# get 'sessions/new', as: :sign_in
