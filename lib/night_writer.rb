require './lib/dictionary'
require './lib/translator'
require 'pry'

input_reader = File.open(ARGV[0], "r")
message_reader = input_reader.read.strip
input_reader.close
translator = Translator.new(message_reader)
@char_length = message_reader.length


output_writer = File.open(ARGV[1], "w")
output_writer.write(translator.formater)
output_writer.close

puts "Created '#{ARGV[1]}' containing #{@char_length} characters"
