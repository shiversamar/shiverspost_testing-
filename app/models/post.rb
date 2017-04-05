class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :title, length: {maximum:100}
end
