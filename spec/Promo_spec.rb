require 'spec_helper'

describe Promo do
  it 'has a version number' do
    expect(Promo::VERSION).not_to be nil
  end

  it 'expect Promo Jammer to promo_jammer' do
    @first_name = "Promo".downcase
    @space = "_"
    @last_name = "Jammer".downcase
    expect(@first_name.concat("#{@space}#{@last_name}")).to eq("promo_jammer")
  end
end
