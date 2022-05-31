#!/usr/bin/env ruby

words = { 'noun': '', 'verb': '', 'adjective': '', 'adverb': '' }

words.each do |type, _|
  print "Enter #{%w[a an][type.to_s.start_with?('a') ? 1 : 0]} #{type}: "
  words[type] = gets.strip
end

# Forming Yes/No question
reply = ' '
until 'yn'.include? reply
  puts "Was #{words[:noun]} #{words[:verb]} in the #{words[:adverb]}? (type: [y]es or [n]o) "
  reply = gets.strip.downcase
end

# Forming a Wh- question
puts "#{%w[Why How Where].sample(1)[0]} #{words[:noun]} #{words[:verb]} #{words[:adjective]}? "
puts "That's #{%w[awesome hilarious funny odd scary weird].sample(1)[0]}!"
