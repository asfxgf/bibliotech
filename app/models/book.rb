class Book < ApplicationRecord
  has_many :appartenance

  validates :title, presence: true
  validates :description, presence: true
  validates :picture, presence: true
  validates :amazon_url, presence: true
  validates :author, presence: true
  validates :language, presence: true
  validates :category, presence: true
end
