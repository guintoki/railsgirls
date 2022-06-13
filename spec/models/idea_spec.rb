require "rails_helper"

RSpec.describe Idea, type: :model do
  describe "validate idea" do
    it "has a name" do # yep, you can totally use 'it'
      idea = Idea.create!(name: "My Awesome Idea Name") # creating a new idea 'instance'
      second_idea = Idea.create!(name: "My Second Idea Name") # creating another new idea 'instance'
      expect(second_idea.name).to eq("My Second Idea Name") # this is our expectation
    end

    it "has a description" do
      idea = Idea.create!(name: "My Idea Name", description: "My Awesome Idea Description")
      second_idea = Idea.create!(name: "My Second Idea Name", description: "My Second Idea Description")
      expect(second_idea.description).to eq("My Second Idea Description")
    end
  end
end