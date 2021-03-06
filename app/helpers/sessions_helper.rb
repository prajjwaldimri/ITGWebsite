require 'bcrypt'
module SessionsHelper

#Logs in the given user
  def log_in(user)
    session[:user_id]= user.id
  end

  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

#Returns true if given user is current user
  def current_user?(user)
    user == current_user
  end

#Retrieves the current logged-in user (if any)
  def current_user
    #Not a comparision inside if, but assignment
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])

      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def admin?(user)
    hash = "XI4OaJZwjJVADw14IArpmxqAAaSUFrTqMt9Rtkmv4j2xOAYTZKHFrTqMt9Rtkmv4j2xOAYTZKngRYoclkboqjsRWc26obUEM49hrbObflOorMmwVsyFrIf2znnjfqYWsLC7LFhMRrI60NCODYprajjwaldimri@hotmail.comzmbaxyzayushpant@hotmail.comAWf6w7vaxJuqsTXbOx6PjMRkuQJGkaiWKvWLsrwc0U1JaBrPulArFDckuVeDS9go90RlT5hDnCV9qtmvIM1s8VFFyO6ceqQCtWnctaJKQ0w20GmoXScgVzfxxe8v"
    hash.include?(user.email)
  end

  #Forgets a persisten session
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  #Logs out the us

#Returns true if given user is current user
  def current_user?(user)
    user == current_user
  end

  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end

  def store_location
    session[:forwarding_url] = request.url if request.get?
  end

  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end
end
