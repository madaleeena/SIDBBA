module SessionsHelper
	# Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  def log_out
    Rails.logger.debug("CAGANITA: #{session[:user_id].inspect}")
    session.delete(:user_id)
    @current_user = nil
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= Utilizador.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
end
