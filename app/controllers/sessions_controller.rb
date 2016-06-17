class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(rollno: params[:session][:rollno])
    if user && user.authenticate(params[:session][:password])
      log_in user
      remember user
      redirect_to user
    else
      flash.now[:alert] = 'Invalid rollno/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end


end
