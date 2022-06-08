#!/usr/bin/env ruby

# rubocop:disable Security/Eval

# Unicode-aware titlecase for Ruby 2.4.0+
class String
  def titlecase
    split(/([[:alpha:]]+)/).map(&:capitalize).join
  end

  def integer?
    return true if self =~ /\A\d+\Z/

    true if Int(self) rescue false
  end
end

def prompt(current)
  print "What is #{current} the number (a integer is required)? "
  gets.strip
end

def ask_numbers
  numbers = { 'first': nil, 'second': nil }
  numbers.each do |sequence, _|
    numbers[sequence] = prompt(sequence) while numbers[sequence].nil? || !numbers[sequence].to_s.integer?
  end
  numbers
end

def arithmetic_operators
  numbers = ask_numbers
  { 'addition': '+', 'subtraction': '-', 'multiplication': '*', 'division': '/' }.each do |label, operator|
    operation = "#{numbers[:first]} #{operator} #{numbers[:second]}"
    result = operator == '/' && numbers[:second].to_i.zero? ? "Impossible #{label}" : eval(operation)
    puts("#{operation} = #{result}")
  end
end

arithmetic_operators
