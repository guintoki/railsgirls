require 'rails_helper'
require_relative '../support/devise'

RSpec.describe IdeasController, type: :request  do
  describe "POST /ideas" do
    before(:each) do
      user = FactoryBot.create(:user)
      sign_in user
    end


    # context "/post" do
    #   it "creates a new idea" do
    #     # post "/ideas", params: { :create_params => { name: "My Awesome Idea Name", description: 'teste', picture: 'teste' } }
    #     post "/ideas", params: { :idea => { name: "My Awesome Idea Name", description: 'teste', picture: 'teste' } }
    #     expect(response).to have_http_status(:found)
    #     expect(response).to redirect_to("/ideas/#{Idea.last.id}")
    #   end
    # end

    context "/get" do
      it "get ideas list" do
        get "/ideas"
        expect(response).to have_http_status(:found)
      end
    end
  end
end