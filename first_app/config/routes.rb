Rails.application.routes.draw do
  
  get 'users/show'
  get 'sessions/new'
  get 'moni/monitorizacao'
  get 'sobre/sobre_nos'
  get 'homepage/home'
  get 'welcome/hello'
  get '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  get  '/favorito', to: 'moni#new'
  post '/favorito', to: 'moni#create'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
