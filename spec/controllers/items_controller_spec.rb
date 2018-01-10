require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe "GET #index" do
    it "returns list of Items in json" do
      Item.all.each(&:destroy)
      (0..5).each do |i|
        @item = Item.new
        @item.price = 10
        @item.title = "Best thing ever #{i}"
        @item.save
      end
      @expected = Item.all.to_json
      get :index
      expect(response.body).to eq(@expected)
      Item.all.each(&:destroy)
    end
  end
=begin
  describe "POST #add_to_cart" do
    it 'add item to cart' do
      Item.all.each(&:destroy)
      session[:cart_id] = 1
      (0..5).each do |i|
        @item = Item.new
        @item.price = 10
        @item.title = "Best thing ever #{i}"
        @item.save
      end
      post :add_to_cart,
        params: { items: Item.all.to_json }
      expect(response.body).to eq(Item.all.to_json)
    end
    Item.all.each(&:destroy)
  end
=end
end
