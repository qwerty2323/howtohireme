class Order < ApplicationRecord
  validates :cart_id, presence: true, numericality: { only_integer: true }
  validates :items, presence: true, length: {  minimum: 1 }
  def items
    @items ||= []
  end

  def total
    @items.map(&:price).inject(0, &:+)
  end
end
