=begin
	
1* On récupère l'argument et on le mets sous forme de caractères dans un tableau sentence_to_char ["H","e","l","l","o"]
2* Pour chaque caractère on le passe au format Code ASCII
3* On vérifie si c'est une lettre
4* Si c'est la première lettre de la chaîne de caractère ou que space_bool = true on l'a met en majuscule et on l'insère dans le tableau output_sentence (repasser space_bool à false)
5* Si le caractère a le Code ASCII = 32 on insère dans output_sentence et on passe le booleen space_bool = true pour que lors de la prochaine itération le prochain caractère soit en MAJ
6* Si le caractère n'est pas en première position simplement l'insérer dans output_sentence
7* Transformer output_sentence qui est un tableau de code ASCII en tableau de caractères
8* Afficher résultat
	
=end

#Fonction utilisées
def is_letter?(ascii)
	return true if ascii.between?(65,90)
	return true if ascii.between?(97,122)
end

def set_letter_upper(ascii)
	return ascii if ascii.between?(65,90)
	return ascii - 32 if ascii.between?(97,122)
end

def display_output(array_ascii)
	output = []
	array_ascii.each do |ascii|
		letter = ascii.chr
		output.insert(-1, letter)
	end
	return output.join
end

def isFirstLetter?(count)
	return true if count == 0
	return false if count != 0
end

#Partie 1 : Gestion d'erreur
sentence = ARGV[0]
if ARGV.length != 1 || sentence.to_s.count("0-9") > 0
	puts "error"
	exit
end

#Partie 2 : Parsing
sentence_to_char = sentence.to_s.chars
letter_count = 0
space_bool = false
output_sentence = []

#Partie 3 : Résolution
sentence_to_char.each do |char|
	letter_ascii = char.ord
	if is_letter?(letter_ascii) && space_bool == true || isFirstLetter?(letter_count)
		letter_ascii = set_letter_upper(letter_ascii)
		output_sentence.insert(-1, letter_ascii)
		space_bool = false
	elsif letter_ascii == 32
		output_sentence.insert(-1, letter_ascii)
		space_bool = true	
	elsif is_letter?(letter_ascii)
		output_sentence.insert(-1, letter_ascii)
	elsif !is_letter?(letter_ascii)
		output_sentence.insert(-1, letter_ascii)
	end
	letter_count += 1
end

#Partie 4 : Affichage
print display_output(output_sentence)
