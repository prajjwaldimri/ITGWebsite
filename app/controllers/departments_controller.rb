class DepartmentsController < ApplicationController
  def cse
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statements").take(10)
  end

  def ece
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statements").take(10)
  end

  def civil
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statements").take(10)
  end

  def mech
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statements").take(10)
  end

  def ee
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statements").take(10)
  end

  def hum
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statements").take(10)
  end
end
