#!/usr/bin/env ruby

fortune = [
  {
    author: 'D.K. The Mith',
    quote: 'Se fizer certo, dará certo.'
  },
  {
    author: 'Robin Williams',
    quote: 'Why do they call it rush hour when notihng moves?'
  },
  {
    author: 'Michael Scott',
    quote: 'I\'m not superstitious, but I am a little stitious.'
  },
  {
    author: 'Steve Jobs',
    quote: 'Your time is limited, so don\'t waste it living someone else\'s life. Don\'t be trapped by dogma – which is living with the results of other people\'s thinking.'
  }
].sample(1)[0]

puts "#{fortune[:author]} says, \"#{fortune[:quote].tr('"', '')}\""
