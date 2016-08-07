class HomeController < ApplicationController
  def index
    @user = current_user    
    @articles = Article.paginate(page: params[:page])
  end

  def about
  end
end
