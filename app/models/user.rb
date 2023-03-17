class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, :email, presence: true, uniqueness: true
  validates :name, length: { in: 4..15 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
