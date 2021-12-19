require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "Test model Comment" do
    it "Comment réussi" do
      @comment = Comment.new(content: "Bienvenu chez nous")
      expect(@comment).to be_valid
    end

    it "Commentaire echoué" do
      @comment = Comment.new(content: nil)
      expect(@comment).not_to be_valid
    end
    
  end
end
