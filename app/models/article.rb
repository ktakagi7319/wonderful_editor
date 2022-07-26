class Article < ApplicationRecord
  has_many :article_likes
  has_many :comments
  belongs_to :user
end
