FallenLeaf::Application.routes.draw do
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  resources :projects,    only: [:index, :show]
  resources :collections, only: [:index, :show]
  resources :galleries,   only: [:index, :show], path: 'gallery'

  root 'pages#index'
end
