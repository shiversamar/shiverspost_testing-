class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates :title, presence: true
  validates :body, presence: true
  validates :title, length: {maximum:100}
end
