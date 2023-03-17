class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, :body, presence: true
  validates :title, uniqueness: true, length: { in: 5..50 }
  validates :body, length: { in: 50..2000 }
end
