#!/usr/bin/env ruby

words = { 'noun': [], 'verb': [], 'adjective': [], 'adverb': [] }

words.each do |type, _|
  print "Enter a list of #{type} (comma-separated): "
  gets.strip.split(',').each { |item| words[type].push(item.gsub(/\s+/, ' ').strip) }
end

print "Do you #{words[:verb].sample(1)[0]} your #{words[:adjective].sample(1)[0]} "
puts "#{words[:noun].sample(1)[0]} #{words[:adverb].sample(1)[0]}? That's hilarious!"
