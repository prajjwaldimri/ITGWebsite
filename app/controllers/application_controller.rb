class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :get_current_details
  include SessionsHelper

  #Confirms a logged in user
  def logged_in_user
    unless logged_in?
      store_location
      flash[:error] = 'Please log in'
      redirect_to login_url
    end
  end

  def get_current_details
    @users_count = User.count
    @articles_count = Article.count
    @assignments_count = Assignment.count
    @developer_count = (User.where(other_designations: "Developer")).count
    @developers = User.where(other_designations: "Developer")
  end
end
