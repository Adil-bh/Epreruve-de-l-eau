args = ARGV
wanted_word = args[-1]
word_count = 0
wanted_word_index = nil

def check_arguments(arguments) #Vérifier aussi les caracrtères spéciaux ?
	return true if arguments.length < 2
end

def contains_wanted_word(word, array)
	contains_word_bool = nil
	array.each do |value|
		if value == word
			contains_word_bool = true
		end
	return true if contains_word_bool == true
	end
end

if check_arguments(args)
	puts "error"
else
	args.pop() #On supprime le dernier mot du tableau pour pouvoir parser
	if contains_wanted_word(wanted_word,args) != true
		puts "-1"
	elsif contains_wanted_word(wanted_word,args) == true
		args.each do |word, index|
			if word == wanted_word
				wanted_word_index = word_count
				break
			end
			word_count += 1
		end
		puts wanted_word_index
	end
end