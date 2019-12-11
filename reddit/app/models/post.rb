# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :body, presence: true
  belongs_to :user, foreign_key: 'user_id'
  has_many :comments
end
