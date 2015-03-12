Tingui::Engine.routes.draw do
  root to: 'dashboard#index'

  resources :posts, only: [:new, :create, :index]
  resources :categories
end
