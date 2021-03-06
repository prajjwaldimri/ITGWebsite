class SessionsController < ApplicationController
  def new
    @user = current_user
    if @user != nil
      redirect_to @user
      flash.now[:success] = 'Already Logged in'
    end
  end

  def create
    user = User.find_by(rollno: params[:session][:rollno])
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to user
    else
      flash.now[:error] = 'Invalid roll.no/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to login_path
  end


end
