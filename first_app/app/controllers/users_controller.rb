class UsersController < ApplicationController
  def show
    @user = Utilizador.find(params[:id])
  end

  def new
  	@user = Utilizador.new
  end

  def create
    @user = Utilizador.new(user_params)
    if @user.save
      log_in @user
      redirect_to ("/users/" + @user.id.to_s)
    else
      render 'new'
    end
  end

  def user_params
      params.require(:user).permit(:nomeutilizador, :email, :nome,
                                   :password_digest)
  end
end
