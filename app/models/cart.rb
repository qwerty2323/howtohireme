class Cart < ApplicationRecord
  validates :items, presence: true, length: {  minimum: 1 }
  attr_reader :items
  def items
    @items ||= []
  end
end
