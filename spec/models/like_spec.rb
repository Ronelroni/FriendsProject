require 'rails_helper'

RSpec.describe Like, type: :model do
  context "Test model Like" do
    it "Mettre un like sur publication réussi" do
      @like = Like.new(user_id: "45", publication_id: "125")
      expect(@like).to be_valid
    end

    it "Mettre un like sur publication echoué, absence User id" do
      @like = Like.new(user_id: nil, publication_id: "115")
      expect(@like).to be_valid
    end

    it "Mettre un like sur publication echoué, absence Publication id" do
      @like = Like.new(user_id: "25", publication_id: nil)
      expect(@like).to be_valid
    end
    
    it "Mettre un like sur publication echoué, absence User id & Publication id" do
      @like = Like.new(user_id: nil, publication_id: nil)
      expect(@like).to be_valid
    end
  end
end
