require 'spec_helper'

describe Promo do
  
  let(:first_name_all_characters_capitalized) { "PROMO".downcase.capitalize }
  let(:last_name_all_characters_capitalized) { "JAMMER".downcase.capitalize }
  
  let(:first_name_first_character_capitalized) { "Promo" }
  let(:last_name_first_character_capitalizeed) { "Jammer" }
  
  let(:first_name_last_character_capitalized) { "promO".downcase.capitalize }
  let(:last_name_last_character_capitalized) { "jammeR".downcase.capitalize }
  
  let(:first_and_last_name_first_character_capitalized) { "Promo Jammer" }
  
  it 'has a version number' do
    expect(Promo::VERSION).not_to be nil
  end
  
  context "when all characters of string is capitalized" do 
    it "expect first character capitalized from capitalized string" do
      expect("#{first_name_all_characters_capitalized} #{last_name_all_characters_capitalized}").to eq(first_and_last_name_first_character_capitalized)
    end 
  end
  
  context "when first character of string is capitalized" do
    it "expect first character capitalized from string where first character is capitalized" do 
      expect("#{first_name_first_character_capitalized} #{last_name_first_character_capitalizeed}").to eq(first_and_last_name_first_character_capitalized)
    end
  end 
  
  context "when last character of string is capitalized" do
    it "expect first character capitalized from string where last character is capitalized" do 
      expect("#{first_name_last_character_capitalized} #{last_name_last_character_capitalized}").to eq(first_and_last_name_first_character_capitalized)
    end 
  end 
end
