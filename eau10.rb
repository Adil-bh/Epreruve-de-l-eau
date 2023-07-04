#Fonction utilisées
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

def contains_special_character?(argument)
	regex = /[!@#$%^&*(),.?":{}|<>]/
	if argument =~ regex 
		return true 
	else 
		return false
	end
end

#Partie 1 : Gestion d'erreur
if check_arguments(ARGV)
	puts "error"
	exit
end

ARGV.each do |argument|
	if contains_special_character?(argument)
		puts "error : non-allowed character"
		exit
	end
end

#Partie 2 : Parsing
wanted_word = ARGV[-1]
word_count = 0
wanted_word_index = nil

#Partie 3 : Résolution
#Partie 4 : Affichage
ARGV.pop() 				#On supprime le dernier mot du tableau pour pouvoir parser
if contains_wanted_word(wanted_word,ARGV) != true #On vérifie si le mot est bien dans le tableau des arguments
	puts "-1"
elsif contains_wanted_word(wanted_word,ARGV) == true #Si oui on compare le mot cherché à chaque valeur dans le tableau
	ARGV.each do |word|
		if word == wanted_word
			wanted_word_index = word_count
			break
		end
		word_count += 1
	end
	puts wanted_word_index
end
