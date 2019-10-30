  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get     'sessions/new'
  post    'sessions/create'
  delete  'sessions/destroy'

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :relationships, only: [:create, :destroy]
  get '/index', to: 'posts#index'
  get    '/posts',   to: 'posts#new'
  post   '/posts',   to: 'posts#create'
  get     'posts/new'
  post    'posts/create'

  root 'static_pages#home'
  get   '/home',        to: 'static_pages#home'
  get   '/help',        to: 'static_pages#help'
  get   '/about',       to: 'static_pages#about'
  get   '/contact',     to: 'static_pages#contact'
  get   '/signup',      to: 'users#new'
  post  '/signup',      to: 'users#create'
  get   '/edit',        to: 'users#update'

end
