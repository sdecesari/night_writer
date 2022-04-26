require 'simplecov'
SimpleCov.start
require './lib/dictionary'
require './lib/translator'
require 'pry'

RSpec.describe Dictionary do
  before :each do
    @dictionary = Dictionary.new
  end

  it "exists" do
    expect(@dictionary).to be_a Dictionary
  end

  it "has attributes" do
    expect(@dictionary.braille_alphabet.class).to eq(Hash)
  end
end
