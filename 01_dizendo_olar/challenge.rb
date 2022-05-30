#!/usr/bin/env ruby
# frozen_string_literal: true

def saudation(person)
  case person
  when /Daniel/i
    return "#{person}, whow is it going?"
  else
    return "#{person}, nice to meet you!"
  end
end

print 'What is your name? '
puts "#{[`Hello`, `Hi`, `Howdy`].sample(1)}, #{saudation(gets.strip)}"
