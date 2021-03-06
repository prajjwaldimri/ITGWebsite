class User < ActiveRecord::Base

  extend FriendlyId
  friendly_id :rollno, use: :slugged
  validates :rollno, :slug, presence: true

  has_many :assignments, dependent: :destroy
  has_many :articles, dependent: :destroy
  attr_accessor :remember_token
  before_save{self.email = email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+.\-]+@[a-z\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 256},
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false }

  validates :name, presence: true, length: {maximum: 50}

  VALID_ROLLNO_REGEX = /\A[0-9]+\z/
  validates :rollno, presence: true, length: {maximum: 20},
  format: { with: VALID_ROLLNO_REGEX }, uniqueness: true

  validates :branch, presence: true
  validates :user_type, presence: true

  has_secure_password
  validates :password, length: {minimum: 8}, allow_blank: true

#Returns hash digest of given password
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

#Returns a random token
  def User.new_token
    SecureRandom.urlsafe_base64
  end

#Remembers a user in database
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

#Forgets a user
  def forget
    update_attribute(:remember_digest, nil)
  end

#Returns true if given token matches digest
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
end
