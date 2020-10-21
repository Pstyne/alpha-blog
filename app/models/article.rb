class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 10, maximum: 150 }
  validates :content, presence: true, length: { minimum: 10 }
  belongs_to :user
end
