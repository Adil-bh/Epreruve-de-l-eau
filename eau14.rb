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

def is_word_superior?(array1, array2)
	index_letter = 0
	while index_letter != array1.length || index_letter != array2.length
		if array1[index_letter] < array2[index_letter]
			return false
		elsif array1[index_letter] > array2[index_letter]
			return true
		elsif array1[index_letter] == array2[index_letter]
			index_letter += 1
		end
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
ARGV.each do |word|
	word = word.to_s.chars
	word_ascii = set_chars_to_ascii(word)
	array_of_words.insert(-1, word_ascii)
end

#Partie 3 : Résolution
index_lettre = 0
n = array_of_words.length
for i in 0..n - 2
	min = array_of_words[i]
	for j in i+1..n - 1
		if is_word_superior?(array_of_words[i], array_of_words[j])
			array_of_words[i], array_of_words[j] = array_of_words[j], array_of_words[i]
		end
	end	

end

#Partie 4 : Affichage
array_of_words.each do |word|
	word = set_ascii_to_chars(word)
	word = word.join("")
	print "#{word} "
end