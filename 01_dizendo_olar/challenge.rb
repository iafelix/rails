#!/usr/bin/env ruby

def saudation(person)
  case person
  when /Daniel/i
    return "#{person}, how is it going?"
  else
    return "#{person}, nice to meet you!"
  end
end

print 'What is your name? '
puts "#{[`Hello`, `Hi`, `Howdy`].sample(1)}, #{saudation(gets.strip)}"
