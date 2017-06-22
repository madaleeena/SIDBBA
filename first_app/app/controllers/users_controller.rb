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
      redirect_to @user
    else
      render 'new'
    end
  end

  def user_params
      params.require(:user).permit(:username, :email, :pass,
                                   :name)
  end
end
