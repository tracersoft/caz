Tingui::Engine.routes.draw do
  root to: 'dashboard#index'
  resources :posts, only: [:new, :create, :index]
  resources :pages, only: [:new, :create, :index]
end
