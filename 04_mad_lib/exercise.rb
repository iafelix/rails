#!/usr/bin/env ruby

def question(wanted)
  print "Enter #{%w[a an][wanted.to_s.start_with?('a') ? 1 : 0]} #{wanted}: "
  gets.strip
end

words = { 'noun': '', 'verb': '', 'adjective': '', 'adverb': '' }

words.each do |type, _|
  words[type] = question(type)
end

puts "Do you #{words[:verb]} your #{words[:adjective]} #{words[:noun]} #{words[:adverb]}? That's hilarious!"
