require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  describe "GET #register" do
    it "returns http success" do
      get :register
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #sign_in" do
    it "returns http success" do
      get :sign_in
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #sign_out" do
    it "returns http success" do
      get :sign_out
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #subscribe" do
    it "returns http success" do
      get :subscribe
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #see_articles" do
    it "returns http success" do
      get :see_articles
      expect(response).to have_http_status(:success)
    end
  end

end
