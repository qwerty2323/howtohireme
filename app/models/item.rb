class Item < ApplicationRecord
  attr_accessor :title, :price
  validates :price, :title, presence: true
  validates :price, numericality: { only_integer: true }
end
