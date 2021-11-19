class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: true
  paginates_per 10
end
