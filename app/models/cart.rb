class Cart < ApplicationRecord
  validates :items, presence: true, length: {  minimum: 1, maximum: 10 }
  attr_reader :items
  def items
    @items ||= []
  end
end
