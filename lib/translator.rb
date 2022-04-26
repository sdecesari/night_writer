require_relative 'dictionary'
class Translator < Dictionary

  def initialize(message_reader)
    @message_reader = message_reader
  end

  # def character_split
  #   message_chunks = @message_array.each_slice(40).map(&:join)
  #   dictionary = Dictionary.new
  #   message_chunks.each do |chunk|
  #     @letter_string << chunk.split("")
  #   end
  #   braille_array
  # end

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

  # def character split
  #   formater.char_length.each_slice(40).map(&:join).join
  # end
end
