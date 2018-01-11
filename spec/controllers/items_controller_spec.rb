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

  describe "POST #add_to_cart" do
    it 'add item to cart' do
      Item.all.each(&:destroy)
      @item = Item.new
      @item.price = 10
      @item.title = 'Best thing ever'
      @item.save!
      post :add_to_cart,
        params: { items: @item.to_json }
      expect(response).to redirect_to(cart_add_to_cart_path, params: @item)
      Item.all.each(&:destroy)
    end
  end
end
