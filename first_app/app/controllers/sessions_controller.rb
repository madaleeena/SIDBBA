class SessionsController < ApplicationController
  def new
  end

  def create
    @user = Utilizador.find_by(email: params[:session][:email].downcase)

    if @user && @user.password.to_s==params[:session][:password].to_s
      @praia = Praia.new
      @praia = Praia.joins(:utilizadors).where(:utilizadors => {:id => @user.id })
      Rails.logger.debug("Praias: #{@praia.inspect}")
    	log_in @user
      redirect_to ("/users/" + @user.id.to_s)
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to "/homepage/home"
  end
end
