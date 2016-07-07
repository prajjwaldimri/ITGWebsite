class Article < ActiveRecord::Base
  belongs_to :user
  default_scope -> {order(created_at: :desc)}
  validates :user_id, presence: true
  validates :title, presence: true, length: {minimum: 10}
  validates :content, presence: true, length: {minimum: 100}
  validates :post_type, presence: true  
end
