class DepartmentsController < ApplicationController
  def cse
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statements").take(10)
  end

  def ece
  end

  def civil
  end

  def mech
  end

  def ee
  end

  def hum
  end
end
