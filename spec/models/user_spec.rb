require 'rails_helper'

RSpec.describe User, type: :model do
  context "Test model User" do
    it "Création User réussi" do
      @user = User.new(name: "Jordan", email: "emailjd@gmail.com", password: "password")
      expect(@user).to be_valid
    end

    it "Création User echoué sans nom, email et mot de passe" do
      @user = User.new(name: nil, email: nil, password: nil)
      expect(@user).not_to be_valid
    end
    
    it "Création User echoué sans email et mot de passe" do
      @user = User.new(name: "Jordan", email: nil, password: nil)
      expect(@user).not_to be_valid
    end

    it "Création User echoué sans nom et email" do
      @user = User.new(name: nil, email: nil, password: "password")
      expect(@user).not_to be_valid
    end

    it "Création User echoué sans nom et mot de passe" do
      @user = User.new(name: nil , email: "email@gmail.com", password: nil)
      expect(@user).not_to be_valid
    end

    it "Création User réussi sans nom" do
      @user = User.new(name: nil, email: "emailjd@gmail.com", password: "password")
      expect(@user).to be_valid
    end

    it "Création User échoué sans email" do
      @user = User.new(name: "Jordan", email: nil, password: "password")
      expect(@user).not_to be_valid
    end

    it "Création User echoué sans mot de passe" do
      @user = User.new(name: "Jordan", email: "emailjd@gmail.com", password: nil)
      expect(@user).not_to be_valid
    end

  end
end
