Rails.application.routes.draw do
  # resources :posts
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
      resources :posts
  end
end