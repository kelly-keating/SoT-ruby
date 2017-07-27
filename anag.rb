start_time = Time.now

6.times do 

	words = File.read("words.txt").split("\n").select{ |w| w.length > 4 && w.length < 7 }
	word = words.sample

	anag = word.split("").shuffle.join
	not_guessed = true

	puts word
	puts anag
	puts "What is this word??"

	while not_guessed
		guess = gets.chomp
		if guess == word
			puts "  You got it!"
			not_guessed = false
			break
		end
	end
end

end_time = Time.now

puts "You took #{(end_time - start_time).floor} seconds"
