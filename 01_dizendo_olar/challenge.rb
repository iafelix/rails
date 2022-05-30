#!/usr/bin/env ruby

def saudation(person)
  case person
  when /Daniel/i
    "#{person}, how is it going?"
  else
    "#{person}, nice to meet you!"
  end
end

print 'What is your name? '
puts "#{%w[Hello Hi Howdy].sample(1)[0]}, #{saudation(gets.strip)}"
