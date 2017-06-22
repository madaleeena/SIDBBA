class UsersController < ApplicationController
  def show
    @user = Utilizador.find(params[:id])
    @praia = Praia.joins(:utilizadors).where(:utilizadors => {:id => @user.id })
  end

  def new
  	@user = Utilizador.new
  end

  def create
    @aux = Utilizador.find_by(email: params[:user][:email])
    @user = Utilizador.new(user_params)
    if @aux!=nil
      flash[:danger] = 'O utilizador ja existe'
    elsif @user.save
        log_in @user
        redirect_to ("/users/" + @user.id.to_s)
    else
        render 'new'
    end
  end

  def user_params
      params.require(:user).permit(:nomeutilizador, :email, :nome,
                                   :password)
  end
end
