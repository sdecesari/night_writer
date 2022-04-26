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

  def formater
    column1 = []
    column2 = []
    column3 = []
    translate.each do |array|
      column1.push(array[0].to_s)
      column2.push(array[1].to_s)
      column3.push(array[2].to_s)
    end
    "#{column1.join}\n#{column2.join}\n#{column3.join}\n"
  end

end
