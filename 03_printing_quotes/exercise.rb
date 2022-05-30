#!/usr/bin/env ruby

print 'What is the quote? '
quote = gets.strip

print 'Who said it? '
author = gets.strip

puts author + ' says, "' + quote.tr('"', '') + '"'
