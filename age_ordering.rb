require 'pry'

data = [
    ['Frank', 33],
    ['Stacy', 15],
    ['Juan', 24],
    ['Dom', 32],
    ['Steve', 24],
    ['Jill', 24]
]

puts "\n"
puts "Level 1 (approach 1):"

sorted = data.sort_by do |datum|
	datum[1]
end
puts sorted.inspect
sorted.each { |person| puts person[0] }

puts "\n"
puts "Level 2: (approach 1)"
sorted.each { |person| puts "#{person[0]} (#{person[1]})" }

puts "\n"
puts "Level 3: (approach 1)"
sorted_by_age_and_alph = data.sort_by do |datum|
	[datum[1], datum[0]]
end
puts sorted_by_age_and_alph.inspect

puts "\n"
puts "Level 4: (approach 1)"
# build a hash with the age as the key and an array of names as the value
grouped_by_age = {}
data.each do |datum|
	grouped_by_age[datum[1]] = []
end
data.each do |datum|
	grouped_by_age.each do |age, names|
		if datum[1] == age
			names << datum[0]
		end
	end
end
puts grouped_by_age
