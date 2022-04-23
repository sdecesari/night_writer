
input_reader = File.open(ARGV[0], "r")
message_reader = input_reader.read.strip
input_reader.close


chars = message_reader.length

output_writer = File.open(ARGV[1], "w")
output_writer.write(chars)
output_writer.close

puts "Created '#{ARGV[1]}' containing #{chars} characters"
