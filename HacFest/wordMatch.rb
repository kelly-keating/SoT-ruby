
def matcher(word = "SPLIT", dict = File.read("dictionary.txt").split("\n").select{ |w| w.length > 3 })
  result = []
  fours = []
  word.upcase!
  for x in dict
    x.upcase!
  end

  # store fours in array
  $i = 0
  while $i < word.length - 3  do
    fours.push(word[$i..$i+3])
    $i +=1
  end

  # pop from array into result
  for letters in fours
    for term in dict
      if term.include? letters
        result.push(term)
        dict.delete(term)
      end
    end
  end

  # return resulting array
  result.sort!
  puts result
  return result
end

matcher
