require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'validates cart_id presence' do
    @order = Order.new
    @order.items = [].push(Item.new)
    expect(@order.valid?).to be false
  end

  it 'validates items presence' do
    @order = Order.new
    @order.cart_id = 1
    expect(@order.valid?).to be false
  end
end
