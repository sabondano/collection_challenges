require 'pry'

scores = {
		"A"=>1, "B"=>3, "C"=>3, "D"=>2,
		"E"=>1, "F"=>4, "G"=>2, "H"=>4,
		"I"=>1, "J"=>8, "K"=>5, "L"=>1,
		"M"=>3, "N"=>1, "O"=>1, "P"=>3,
		"Q"=>10, "R"=>1, "S"=>1, "T"=>1,
		"U"=>1, "V"=>4, "W"=>4, "X"=>8,
		"Y"=>4, "Z"=>10
}

puts "\n"
puts "Level 1: Letter Scoring an Array"
word = ['H', 'E', 'L', 'L', 'O']
word.each { |letter| puts "#{letter} has the value #{scores[letter]}"}

puts "\n"
puts "Level 2: Scoring Letters in a String"
word = "hello"
word.upcase.chars.each { |letter| puts "#{letter} has the value #{scores[letter]}"}

puts "\n"
puts "Level 3: Scoring an Entire String"
word = "hello"
letters = []
word.upcase.chars.each { |letter| letters << letter }
list_of_scores = []
letters.each { |letter| list_of_scores << scores[letter] }
total_score = list_of_scores.reduce(0, :+)
puts "hello has the total score #{total_score}"