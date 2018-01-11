require 'rails_helper'

RSpec.describe CartController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #add_to_cart" do
    it "returns http success" do
      get :add_to_cart
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #checkout" do
    it "returns http success" do
      get :checkout
      expect(response).to have_http_status(:success)
    end
  end

end
