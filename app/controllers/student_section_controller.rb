class StudentSectionController < ApplicationController
  def index
    @user = current_user
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statement").take(10)
  end
end
