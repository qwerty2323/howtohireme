require 'rails_helper'

RSpec.describe Item, type: :model do
  it 'has id after creation' do
    @item = Item.new
    @item.title = 'Best thing ever'
    @item.price = 10
    @item.save
    expect(@item.id).to eq(1)
    @item.destroy
  end

  it 'validates price as integer' do
    @item = Item.new
    @item.title = 'Best thing ever'
    @item.price = 'One dollar'
    expect(@item.valid?).to be false
  end

  it 'validates price presence' do
    @item = Item.new
    @item.title = 'Best thing ever'
    expect(@item.valid?).to be false
  end

  it 'validates title presence' do
    @item = Item.new
    @item.price = 10
    expect(@item.valid?).to be false
  end
end
