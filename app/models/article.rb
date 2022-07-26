class Article < ApplicationRecord
  has_many :article_likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
end
