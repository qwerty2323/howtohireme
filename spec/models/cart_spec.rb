require 'rails_helper'

RSpec.describe Cart, type: :model do
  it 'is not valid without items' do
    @cart = Cart.new
    expect(@cart.valid?).to be false
    @cart = nil
  end

  it 'is valid with one item' do
    Cart.all.each(&:destroy)
    @cart = Cart.new
    @cart.items << Item.new
    @cart.save
    expect(@cart.id).to eq(1)
    @cart.destroy
  end

  it 'is invalid with ten item' do
    Cart.all.each(&:destroy)
    @cart = Cart.new
    @item = Item.new
    11.times {  @cart.items << @item }
    expect(@cart.valid?).to be false
    @cart.destroy
  end
end
