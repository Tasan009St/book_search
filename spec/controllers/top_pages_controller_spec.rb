require 'rails_helper'

RSpec.describe TopPagesController, type: :controller do

  describe "GET #root" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
