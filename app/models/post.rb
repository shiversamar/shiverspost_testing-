class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true
  validates :body, presence: true
  validates :title, length: {maximum:100}
end
