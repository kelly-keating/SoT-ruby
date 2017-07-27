start_time = Time.now

puts "Try and guess the scrambled word" 
puts "(you can type ':hint' if you need a hand)"


6.times do 
	words = File.read("words.txt").split("\n").select{ |w| w.length > 4 && w.length < 7 }
	word = words.sample

	anag = word.split("").shuffle.join
	not_guessed = true

	puts "--> #{anag}"

	while not_guessed
		guess = gets.chomp
		if guess == word
			puts "  You got it!"
			not_guessed = false
		elsif guess == ":hint"
			puts "(try '#{word}')"
		end
	end
end

end_time = Time.now

puts "Well done!!"
puts "You took #{(end_time - start_time).floor} seconds"
