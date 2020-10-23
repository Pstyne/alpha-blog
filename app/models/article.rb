class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 10, maximum: 150 }
  validates :content, presence: true, length: { minimum: 10 }
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
end
