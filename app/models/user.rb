class User < ActiveRecord::Base

  before_save{self.email = email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+.\-]+@[a-z\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 256},
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false }

  validates :name, presence: true, length: {maximum: 50}

  VALID_ROLLNO_REGEX = /\A[0-9]+\z/
  validates :rollno, presence: true, length: {maximum: 20},
  format: { with: VALID_ROLLNO_REGEX }, uniqueness: true

  has_secure_password
  validates :password, length: {minimum: 8}
end
