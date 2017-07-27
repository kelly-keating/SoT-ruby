actual = rand(1..100)
won = false

puts "Try and guess the number I am thinking of.."
	6.times do
		guess = gets.chomp.to_i
		if guess == actual
			puts "you won!"
			won = true
			break
		elsif guess < actual
			puts "too low!"
		else
			puts "too high!"
		end
	end

	if won
		puts "YOU WON!"	
	else
		puts "you lost :("

end