arguments = ARGV
full_word = arguments[0]
word = arguments[1]

def containsWord?(full_word, word)
	i = 3
	j = 0
	letter_count = 0
	until letter_count == word.length
		if full_word[i] != word[j]
			i += 1
		elsif full_word[i] == word[j]
			i += 1
			j += 1
			letter_count += 1
		end
		if i > full_word.length
			break
		end
	end
	return true if letter_count == word.length
end


if arguments.length != 2 || full_word.count("0-9") > 0 || word.count("0-9") > 0
	puts "error"
else
	if containsWord?(full_word, word) == true
		puts "True"
	else
		puts "False"
	end
end