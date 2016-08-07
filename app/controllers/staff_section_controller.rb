class StaffSectionController < ApplicationController
  def index
    @user = current_user
    @user_feed_items = Article.where(post_type: "Blog" || "Research").take(10)
    @news_items = Article.where(post_type: "News").take(10)
    @statement_items = Article.where(post_type: "Statements").take(10)
    @faculty_members = User.where(user_type: "Faculty").where.not(other_designations: nil)
  end
end
