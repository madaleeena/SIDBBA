Rails.application.routes.draw do
  
  get 'users/show'

  get 'sessions/new'

  get 'perfil_utilizador/user'

  get 'moni/monitorizacao'

  get 'sobre/sobre_nos'

  get 'homepage/home'

  get 'welcome/hello'

  match '/perfil_utilizador/register',      to: 'perfil_utilizador#new_user',        via: 'post'

  get    '/login',   to: 'sessions#new'
  
  post   '/login',   to: 'sessions#create'
  
  delete '/logout',  to: 'sessions#destroy'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
