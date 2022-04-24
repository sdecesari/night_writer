require 'simplecov'
SimpleCov.start
# require './lib/night_writer'
require './lib/dictionary'

RSpec.describe Dictionary do
  before :each do
    @dictionary = Dictionary.new
  end

  it "exists and has attributes" do
    expect(@dictionary).to be_a Dictionary
    expect(@dictionary.braille_alphabet.class).to eq(Hash) 
  end
end
