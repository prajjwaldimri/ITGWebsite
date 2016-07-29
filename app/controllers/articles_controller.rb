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
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article Created"
      render 'new'
    else
      flash[:alert] = "Article creation Failed"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @article.update_attributes(article_params)
      flash[:success] = "Article Updated"
      redirect_to @user
    else
      flash[:alert] = "Errors"
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
    params.require(:article).permit(:title, :content, :post_type)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
