require 'rails_helper'

RSpec.describe "Supports", type: :request do
  describe "GET /support_pet" do
    it "returns http success" do
      get "/supports/support_pet"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /unsupport_pet" do
    it "returns http success" do
      get "/supports/unsupport_pet"
      expect(response).to have_http_status(:success)
    end
  end

end
