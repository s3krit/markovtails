require_relative 'markov.rb'
titles = Markov.new(File.read('titles.txt').tr("\n", ' '))
ingredients = Markov.new(File.read('ingredients.txt').tr("\n", ' '))
instructions = Markov.new(File.read('instructions.txt').tr("\n", ' '))
title = titles.get(Random.rand(5..10))
ingredient = ingredients.get(Random.rand(5..30))
instruction = instructions.get(Random.rand(50)).split('.')[0] + '.'

puts 'Title: ' + title
puts 'Ingredients: ' + ingredient
puts 'Instructions: ' + instruction
