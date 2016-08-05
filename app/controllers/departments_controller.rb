class DepartmentsController < ApplicationController
  def cse
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statements").take(10)
    @faculty_members = User.where(user_type: "Faculty", branch: "Computer Science")
  end

  def ece
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statements").take(10)
    @faculty_members = User.where(user_type: "Faculty", branch: "Electronics")
  end

  def civil
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statements").take(10)
    @faculty_members = User.where(user_type: "Faculty", branch: "Civil")
  end

  def mech
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statements").take(10)
    @faculty_members = User.where(user_type: "Faculty", branch: "Mechanical")
  end

  def ee
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statements").take(10)
    @faculty_members = User.where(user_type: "Faculty", branch: "Electrical")
  end

  def hum
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statements").take(10)
    @faculty_members = User.where(user_type: "Faculty", branch: "Humanities")
  end
end
