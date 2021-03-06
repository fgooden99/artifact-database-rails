Rails.application.routes.draw do
  get 'sessions/new'

    root 'static_pages#home'
    get  '/scan',     to: 'static_pages#scan'
    get  '/search',   to: 'static_pages#search'
    get  '/list',     to: 'static_pages#list'
    get  '/signup',   to: 'users#new'
    post 'signup',    to: 'users#create'

    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'

    resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
