#!/usr/bin/env ruby

require 'date'

# Integer validation
class String
  def integer?
    return true if self =~ /\A\d+\Z/

    true if Int(self) rescue false
  end
end

def prompt(current)
  questions = {
    'current_age': 'What is your current age? ',
    'retire_age': 'At what age would you like to retire? '
  }
  print questions[current]
  gets.strip
end

def ask_numbers
  numbers = { 'current_age': nil, 'retire_age': nil }
  numbers.each do |sequence, _|
    numbers[sequence] = prompt(sequence) while numbers[sequence].nil? || !numbers[sequence].to_s.integer?
  end
  numbers
end

def retirement_wishes
  [
    'Enjoy your days of sleeping late and doing nothing!',
    'Happy Retirement! Enjoy the rest and relaxation!',
    'Have a good one \'case you earned my friend.',
    'Now the fun begins! Happy retirement.',
    'Your someday is here. Enjoy!'
  ].sample(1)[0]
end

def retirement_calculation
  numbers = ask_numbers
  years_left = numbers[:retire_age].to_i - numbers[:current_age].to_i
  if years_left <= 0
    puts retirement_wishes
  else
    puts "You have #{years_left} years left until you can retire."
    puts "It is #{Date.today.year}, so you can retire in #{Date.today.year + years_left}."
  end
end

retirement_calculation
