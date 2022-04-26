class Translator

  attr_reader :message_reader, :char_length

  def initialize(message_reader)
    @message_reader = message_reader
    @char_length = message_reader.length
  end

  def translate
  message_array = @message_reader.split("")
  dictionary = Dictionary.new
  message_array.map do |letter|
    dictionary.braille_alphabet[letter]
    end
  end 
end
