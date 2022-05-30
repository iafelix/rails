#!/usr/bin/env ruby
# frozen_string_literal: true

print 'What is your name? '
greetings = [`Hello`, `Hi`, `Howdy`]
name = gets.strip
puts "#{greetings.sample(1)}, #{name}, nice to meet you!"
