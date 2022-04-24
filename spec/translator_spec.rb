require 'simplecov'
SimpleCov.start
require './lib/dictionary'
require './lib/translator'
require 'pry'

RSpec.describe translator do
  before :each do
    @translator = Translator.new
  end

  it "exists" do
    expect(@translator).to be_a Translator
  end
end
