class ArticlesController < ApplicationController

  before_action :logged_in_user, only: [:new, :edit, :update, :destroy]
  before_action :admin_user, only: [:index]

  def index
    @articles = Article.paginate(page: params[:page])
  end

  def new
    @article = Article.new
  end

  def show
    @user = current_user
    @article = Article.find(params[:id])
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      flash[:success] = "Article Created"
      redirect_to :back
    else
      flash[:error] = "Article creation Failed"
      redirect_to :back
    end
  end

  def edit
    @article = current_user.articles.find(params[:id])
  end

  def update
    @article = current_user.articles.find(params[:id])
    if @article.update_attributes(article_params)
      flash[:success] = "Article Updated"
      redirect_to current_user
    else
      flash[:error] = "Error Updating Article"
      render 'edit'
    end
  end

  def destroy
    Article.find(params[:id]).destroy
    flash[:success] = "Article Deleted"
    redirect_to :back
  end 

  private

  def article_params
    params.require(:article).permit(:title, :content, :post_type, :articleimage)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
