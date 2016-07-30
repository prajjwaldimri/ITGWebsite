class HomeController < ApplicationController
  def index
    @articles = Article.paginate(page: params[:page])
    @user = current_user
  end

  def about
  end
end
