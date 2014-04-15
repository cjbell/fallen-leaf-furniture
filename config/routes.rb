FallenLeaf::Application.routes.draw do
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  resources :projects,    only: [:index, :show]
  resources :collections, only: [:index, :show]
  resources :images,      only: [:index, :show], path: 'gallery'

  namespace :admin do
    resources :images
    resources :projects
  end

  root 'pages#index'
end
