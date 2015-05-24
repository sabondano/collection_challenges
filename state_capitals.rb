@states = {"Oregon" => "OR",
					"Alabama" => "AL",
					"New Jersey" => "NJ",
					"Colorado" => "CO"}

@capitals = {"OR" => "Salem",
						"AL" => "Montgomery",
						"NJ" => "Trenton",
						"CO" => "Denver"}

puts "\n"
puts "Level 1:"
def capital state
	@capitals[@states[state]]
end
puts "The capital of New Jersey is #{capital "New Jersey"}."
puts "The capital of Colorado is #{capital "Colorado"}."

puts "\n"
puts "Level 2:"
def capital_2 state
	if @capitals.include? state
		@capitals[@states[state]]
	else
		"Unknown"
	end
end
puts "The capital of California is #{capital_2 "Californa"}."

puts "\n"
puts "Level 3:"
def state_name capital
	abbreviation = @capitals.select { |key, value| value == capital }.keys[0]
	@states.select { |key, value| value == abbreviation }.keys[0]
end
puts "Denver is the capital of #{state_name "Denver"}."

