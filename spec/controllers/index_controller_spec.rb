require 'rails_helper'

RSpec.describe IndexController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "queries redis" do
      expect($redis).to receive(:get).once.and_call_original
      get :index
    end
  end
end
