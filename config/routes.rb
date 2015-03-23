Caz::Engine.routes.draw do
  root to: 'dashboard#index'

  resources :posts, only: [:new, :create, :index, :edit, :update, :destroy], param: :slug
  resources :post_slugs, only: [:create]

  resources :pages, only: [:new, :create, :index, :edit, :update, :destroy], param: :slug
  resources :categories
end
