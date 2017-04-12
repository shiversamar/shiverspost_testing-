class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :first_name, :last_name, :about_me, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
