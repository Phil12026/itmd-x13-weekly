class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validate :price, numericality: { greater_than_or_equal_to: 0.01 }
end
