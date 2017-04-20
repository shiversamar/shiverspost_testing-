class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :title, presence: true
  validates :body, presence: true
  validates :title, length: {maximum:100}
end
