class User < ApplicationRecord
  paginates_per 8
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  has_many :orders, dependent: :nullify
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :likde_items, through: :likes, source: :item
  enum gender: { unknown: 0, male: 1, female: 2 }
end
