class Assignment < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  default_scope -> {order(created_at: :desc)}
  mount_uploader :pdf, PdfUploader
  validates :user_id, presence: true
  validates :title, presence: true, length: {maximum: 50}
  validates :subject, presence: true, length: {maximum: 50}
  validates :semester, presence: true, length: {maximum: 1}
end
