class Comment < ApplicationRecord
  validates :body, presence: true
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :post, foreign_key: 'post_id'
  validates :content, presence: true, length: { minimum: 3 }
end
