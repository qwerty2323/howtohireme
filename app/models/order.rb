class Order < ApplicationRecord
  validates :cart_id, presence: true, numericality: { only_integer: true }
  validates :items, presence: true, length: {  minimum: 1 }
end
