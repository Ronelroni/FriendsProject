require 'rails_helper'

RSpec.describe Favorite, type: :model do
  context "Test model Favorite" do
    it "Mettre une publication en Favorie réussi" do
      @favorite = Favorite.new(user_id: "45", publication_id: "125")
      expect(@favorite).to be_valid
    end

    it "Mettre une publication en Favorie echoué, absence User id" do
      @favorite = Favorite.new(user_id: nil, publication_id: "115")
      expect(@favorite).to be_valid
    end

    it "Mettre une publication en Favorie echoué, absence Publication id" do
      @favorite = Favorite.new(user_id: "25", publication_id: nil)
      expect(@favorite).to be_valid
    end
    
    it "Mettre une publication en Favorie echoué, absence User id & Publication id" do
      @favorite = Favorite.new(user_id: nil, publication_id: nil)
      expect(@favorite).to be_valid
    end
  end
end
