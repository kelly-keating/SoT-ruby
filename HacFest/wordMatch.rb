def test(a1 = "Ruby", a2 = "Perl")
   puts "The programming language is #{a1}"
   puts "The programming language is #{a2}"
end
test "C", "C++"
test

givenDict = File.read("commonWords.txt").split("\n").select{ |w| w.length > 3 }

def matcher(word = "SPLIT", dict = givenDict)
  # word.toUpper
  # dict.every.toUpper
  # word split to fours
  # for each four search and return array
  # join all arrays
  # return final array
end
