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

  it 'sums item prices' do
    @order = Order.new
    @item = Item.new
    @item.price = 2
    5.times { @order.items << @item }
    expect(@order.items.length).to eq(5)
    expect(@order.items[0].price).to eq(2)
    expect(@order.total).to eq(10)
  end
end
