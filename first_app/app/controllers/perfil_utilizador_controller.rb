class PerfilUtilizadorController < ApplicationController
  def user
  end

  def login
  end

  def register
  end

  def frmLogin
  	email = params['email']
  	password = params['password']
  end

  def new
  	nick = params['cliente[username]']
  	email = params['cliente[email]']
  	password = params['cliente[password]']
  	name = params['cliente[name]']

  	@ceninhas = Cliente.new(:nomeutilizador => nick, :email => email, :nome => name, :passe => password).save

  end

end
