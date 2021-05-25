class Item < ApplicationRecord
  # include ImageUrl
  # include Imagable
  has_many :options, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  belongs_to :category
  paginates_per 10
  enum status: { active: 0, disabled: 1 }
end
