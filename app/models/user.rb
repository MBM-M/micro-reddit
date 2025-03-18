class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, presence: true
  validates :username, presence: true
  validates :password, presence: true, length: { in: 3..15 }
end
