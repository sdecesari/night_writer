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
    expect(@translator).to be_a Translator
    expect(@translator.message_reader).to eq message_reader
  end

  it "can translate alphabet to braille" do
    expect(@translator.translate.class).to eq (Array)
  end

  it 'can format braille' do
    expect(@translator.formater.class).to eq (Array)
  end

end
