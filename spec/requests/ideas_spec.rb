require 'rails_helper'

RSpec.describe IdeasController, type: :request  do
  describe "POST /idea" do
    it "creates a new idea" do
      post "/ideas", params: { :idea_params => { name: "My Awesome Idea Name", description: 'teste', picture: 'teste' } }
      expect(response).to have_http_status(:found)
      expect(response).to redirect_to("/ideas/#{Idea.last.id}")
    end
  end
end