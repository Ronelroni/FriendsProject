require 'rails_helper'

RSpec.describe Publication, type: :model do
  context "Test model Publication" do
    it "Publication réussi" do
      @publication = Publication.new(content: "Merci pour tous")
      expect(@publication).to be_valid
    end

    it "Publication echoué" do
      @publication = Publication.new(content: nil)
      expect(@publication).not_to be_valid
    end
    
  end
end
