require 'simplecov'
SimpleCov.start
require './lib/dictionary'
require './lib/translator'
require 'pry'

RSpec.describe Translator do
  before :each do
    @translator = Translator.new(@message_reader)
  end

  it "exists and attributes" do
    translator = Translator.new(message_reader)
    expect(translator).to be_a Translator
    expect(translator.message_reader).to eq message_reader
    expect(translator.char_length).to eq
  end

  it "can translate alphabet to braille" do
    expect(@translator.translate("a")).to eq ["0.", "..", ".."]
  end

  it 'can format braille' do
    expect(translator.formater).to eq
  end

end
