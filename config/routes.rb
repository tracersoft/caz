Caz::Engine.routes.draw do
  root to: 'dashboard#index'

  resources :posts, only: [:new, :create, :index, :edit, :update]
  resources :post_slugs, only: [:create]

  resources :pages, only: [:new, :create, :index, :edit, :update]
  resources :categories
end
