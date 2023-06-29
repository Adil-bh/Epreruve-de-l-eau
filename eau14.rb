#Fonction utilisées
def set_chars_to_ascii(array)
	output_array = []
	array.each do |char|
		ascii = char.ord
		output_array.insert(-1, ascii)
	end
	return output_array
end

def set_ascii_to_chars(array)
	output_array = []
	array.each do |ascii|
		char = ascii.chr
		output_array.insert(-1, char)
	end
	return output_array
end

def contains_special_character?(argument)
	regex = /[!@#$%^&*(),.?":{}|<>]/
	if argument =~ regex 
		return true 
	else 
		return false
	end
end

#Partie 1 : Gestion d'erreur
if ARGV.length == 0
	puts "error : null arg"
	exit
end

ARGV.each do |argument|
	if contains_special_character?(argument)
		puts "error : non-allowed character"
		exit
	end
end


#Partie 2 : Parsing
array_of_words = []
n = array_of_words.length


#Partie 3 : Résolution

ARGV.each do |word|
	word = word.to_s.chars
	word_ascii = set_chars_to_ascii(word)
	array_of_words.insert(-1, word_ascii)
end


n = array_of_words.length
for i in 0..n - 2
	for j in 0..array_of_words[i].length - 1
		if array_of_words[i+1][j] < array_of_words[i][j]
			array_of_words[i], array_of_words[i+1] = array_of_words[i+1], array_of_words[i]
			i += 1
			break	
	 	#elsif array_of_words[i+1][j] == array_of_words[i][j]
	 	 #	j += 1
		elsif i == n - 2 #Éviter de comparer le dernier argument car il n'y a pas de prochain mot/caractère
			i += 1
	 	 	break
	 	else
 			i += 1
 		end
	end
end



#Partie 4 : Affichage
array_of_words.each do |word|
	word = set_ascii_to_chars(word)
	word = word.join("")
	print "#{word} "
end