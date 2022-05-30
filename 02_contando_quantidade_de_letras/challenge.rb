#!/usr/bin/env ruby

def prompt_for_string
  print 'What is the input string? '
  gets.strip
end

input_string = prompt_for_string
while input_string.length.zero?
  puts "\nThe input string is required."
  input_string = prompt_for_string
end

puts "#{input_string} has #{input_string.length} characters."
