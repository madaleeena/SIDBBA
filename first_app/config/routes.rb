Rails.application.routes.draw do
  
  get 'perfil_utilizador/login'

  get 'perfil_utilizador/register'

  get 'perfil_utilizador/user'

  get 'moni/monitorizacao'

  get 'sobre/sobre_nos'

  get 'homepage/home'

  get 'welcome/hello'

  match '/perfil_utilizador/register',      to: 'perfil_utilizador#new',        via: 'post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
